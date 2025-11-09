using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Threading;

namespace RandomVideoPlayer;

public partial class MainWindow : Window
{
    private readonly LicenseManager _licenseManager;
    private readonly Random _random = new();
    private readonly List<string> _videoFiles = new();

    private readonly DispatcherTimer _moveTimer;
    private readonly DispatcherTimer _speedTimer;
    private readonly DispatcherTimer _zoomTimer;
    private readonly DispatcherTimer _mirrorTimer;
    private readonly DispatcherTimer _skipTimer;

    private double _currentZoom = 1.0;
    private bool _isMirrorActive;
    private bool _isMediaReady;
    private bool _isPlaying;

    public MainWindow(LicenseManager licenseManager)
    {
        InitializeComponent();
        _licenseManager = licenseManager;
        UpdateLicenseStatus();

        _moveTimer = CreateTimer(TimeSpan.FromSeconds(2), (_, _) => ApplyRandomMove());
        _speedTimer = CreateTimer(TimeSpan.FromSeconds(3), (_, _) => ApplyRandomSpeed());
        _zoomTimer = CreateTimer(TimeSpan.FromSeconds(2.5), (_, _) => ApplyRandomZoom());

        _mirrorTimer = new DispatcherTimer();
        _mirrorTimer.Tick += MirrorTimer_Tick;

        _skipTimer = new DispatcherTimer();
        _skipTimer.Tick += SkipTimer_Tick;

        ScheduleNextMirror();
        ScheduleNextSkip();
    }

    private DispatcherTimer CreateTimer(TimeSpan interval, EventHandler handler)
    {
        var timer = new DispatcherTimer { Interval = interval };
        timer.Tick += handler;
        timer.Start();
        return timer;
    }

    private void ChooseFolderButton_Click(object sender, RoutedEventArgs e)
    {
        using var dialog = new System.Windows.Forms.FolderBrowserDialog
        {
            Description = "选择包含 MP4 视频的文件夹"
        };

        if (dialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
        {
            LoadVideos(dialog.SelectedPath);
        }
    }

    private void LoadVideos(string folderPath)
    {
        try
        {
            var files = Directory.EnumerateFiles(folderPath, "*.mp4", SearchOption.TopDirectoryOnly)
                .OrderBy(_ => _random.Next())
                .ToList();

            _videoFiles.Clear();
            _videoFiles.AddRange(files);

            if (_videoFiles.Count == 0)
            {
                FolderLabel.Text = "所选文件夹没有找到 MP4 视频文件。";
                _isPlaying = false;
                VideoElement.Stop();
                return;
            }

            FolderLabel.Text = $"已加载 {_videoFiles.Count} 个视频。";
            PlayRandomVideo();
        }
        catch (Exception ex)
        {
            MessageBox.Show(this, $"加载视频失败：{ex.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }

    private void PlayButton_Click(object sender, RoutedEventArgs e)
    {
        if (!_isMediaReady)
        {
            PlayRandomVideo();
        }
        else
        {
            VideoElement.Play();
            _isPlaying = true;
        }
    }

    private void PauseButton_Click(object sender, RoutedEventArgs e)
    {
        VideoElement.Pause();
        _isPlaying = false;
    }

    private void NextButton_Click(object sender, RoutedEventArgs e)
    {
        PlayRandomVideo();
    }

    private void PlayRandomVideo()
    {
        if (_videoFiles.Count == 0)
        {
            MessageBox.Show(this, "请先选择包含 MP4 视频的文件夹。", "提示", MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }

        string file = _videoFiles[_random.Next(_videoFiles.Count)];

        try
        {
            VideoElement.Stop();
            VideoElement.Source = new Uri(file);
            VideoElement.Position = TimeSpan.Zero;
            VideoElement.SpeedRatio = 1.0;
            _currentZoom = 1.0;
            _isMirrorActive = false;
            UpdateScaleTransform();
            TranslateTransformElement.X = 0;
            TranslateTransformElement.Y = 0;

            _isMediaReady = false;
            VideoElement.Play();
            _isPlaying = true;

            ScheduleNextMirror();
            ScheduleNextSkip();
        }
        catch (Exception ex)
        {
            MessageBox.Show(this, $"无法播放视频：{ex.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }

    private void VideoElement_MediaOpened(object sender, RoutedEventArgs e)
    {
        _isMediaReady = true;
        _isPlaying = true;
    }

    private void VideoElement_MediaFailed(object sender, ExceptionRoutedEventArgs e)
    {
        _isMediaReady = false;
        _isPlaying = false;
        MessageBox.Show(this, $"媒体加载失败：{e.ErrorException.Message}", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
    }

    private void VideoElement_MediaEnded(object sender, RoutedEventArgs e)
    {
        PlayRandomVideo();
    }

    private void ApplyRandomMove()
    {
        if (!IsFeatureActive(MoveEnabledCheckBox) || !_isPlaying)
        {
            return;
        }

        double range = MoveRangeSlider.Value;
        double offsetX = _random.NextDouble() * range * 2 - range;
        double offsetY = _random.NextDouble() * range * 2 - range;

        TranslateTransformElement.X = offsetX;
        TranslateTransformElement.Y = offsetY;
    }

    private void ApplyRandomSpeed()
    {
        if (!IsFeatureActive(SpeedEnabledCheckBox) || !_isPlaying || !_isMediaReady)
        {
            return;
        }

        double min = Math.Min(SpeedMinSlider.Value, SpeedMaxSlider.Value);
        double max = Math.Max(SpeedMinSlider.Value, SpeedMaxSlider.Value);
        if (Math.Abs(max - min) < 0.05)
        {
            max = min + 0.05;
        }

        double speed = min + _random.NextDouble() * (max - min);
        speed = Math.Clamp(speed, 0.1, 5.0);
        VideoElement.SpeedRatio = speed;
    }

    private void ApplyRandomZoom()
    {
        if (!IsFeatureActive(ZoomEnabledCheckBox))
        {
            return;
        }

        double min = Math.Min(ZoomMinSlider.Value, ZoomMaxSlider.Value);
        double max = Math.Max(ZoomMinSlider.Value, ZoomMaxSlider.Value);
        if (max <= 0)
        {
            max = 0.1;
        }

        if (max < min)
        {
            (min, max) = (max, min);
        }

        double zoom = min + _random.NextDouble() * (max - min);
        zoom = Math.Clamp(zoom, 0.1, 10.0);
        _currentZoom = zoom;
        UpdateScaleTransform();
    }

    private void MirrorTimer_Tick(object? sender, EventArgs e)
    {
        _mirrorTimer.Stop();
        if (!IsFeatureActive(MirrorEnabledCheckBox) || !_isPlaying)
        {
            ScheduleNextMirror();
            return;
        }

        StartMirrorEffect();
    }

    private void StartMirrorEffect()
    {
        _isMirrorActive = true;
        UpdateScaleTransform();

        int min = (int)Math.Min(MirrorDurationMinSlider.Value, MirrorDurationMaxSlider.Value);
        int max = (int)Math.Max(MirrorDurationMinSlider.Value, MirrorDurationMaxSlider.Value);
        if (min <= 0) min = 1;
        if (max < min) max = min;
        int durationSeconds = _random.Next(min, max + 1);

        var revertTimer = new DispatcherTimer { Interval = TimeSpan.FromSeconds(durationSeconds) };
        revertTimer.Tick += (_, _) =>
        {
            revertTimer.Stop();
            _isMirrorActive = false;
            UpdateScaleTransform();
            ScheduleNextMirror();
        };
        revertTimer.Start();
    }

    private void SkipTimer_Tick(object? sender, EventArgs e)
    {
        _skipTimer.Stop();
        ApplySkip();
        ScheduleNextSkip();
    }

    private void ApplySkip()
    {
        if (!IsFeatureActive(SkipEnabledCheckBox) || !_isPlaying || !_isMediaReady)
        {
            return;
        }

        int min = (int)Math.Min(SkipDurationMinSlider.Value, SkipDurationMaxSlider.Value);
        int max = (int)Math.Max(SkipDurationMinSlider.Value, SkipDurationMaxSlider.Value);
        if (min <= 0) min = 1;
        if (max < min) max = min;
        int skipSeconds = _random.Next(min, max + 1);

        TimeSpan newPosition = VideoElement.Position + TimeSpan.FromSeconds(skipSeconds);
        if (VideoElement.NaturalDuration.HasTimeSpan && newPosition >= VideoElement.NaturalDuration.TimeSpan)
        {
            PlayRandomVideo();
            return;
        }

        VideoElement.Position = newPosition;
    }

    private void ScheduleNextMirror()
    {
        if (!IsFeatureActive(MirrorEnabledCheckBox))
        {
            _mirrorTimer.Stop();
            return;
        }

        int min = (int)Math.Min(MirrorIntervalMinSlider.Value, MirrorIntervalMaxSlider.Value);
        int max = (int)Math.Max(MirrorIntervalMinSlider.Value, MirrorIntervalMaxSlider.Value);
        if (min <= 0) min = 1;
        if (max < min) max = min;

        int seconds = _random.Next(min, max + 1);
        _mirrorTimer.Interval = TimeSpan.FromSeconds(seconds);
        _mirrorTimer.Start();
    }

    private void ScheduleNextSkip()
    {
        if (!IsFeatureActive(SkipEnabledCheckBox))
        {
            _skipTimer.Stop();
            return;
        }

        int min = (int)Math.Min(SkipIntervalMinSlider.Value, SkipIntervalMaxSlider.Value);
        int max = (int)Math.Max(SkipIntervalMinSlider.Value, SkipIntervalMaxSlider.Value);
        if (min <= 0) min = 1;
        if (max < min) max = min;

        int seconds = _random.Next(min, max + 1);
        _skipTimer.Interval = TimeSpan.FromSeconds(seconds);
        _skipTimer.Start();
    }

    private bool IsFeatureActive(CheckBox checkBox)
    {
        return checkBox.IsChecked == true;
    }

    private void UpdateScaleTransform()
    {
        double scale = _currentZoom;
        if (scale <= 0.01)
        {
            scale = 0.01;
        }

        double scaleX = _isMirrorActive ? -scale : scale;
        ScaleTransformElement.ScaleX = scaleX;
        ScaleTransformElement.ScaleY = scale;
    }

    private void ReactivateButton_Click(object sender, RoutedEventArgs e)
    {
        var dialog = new LicenseWindow(_licenseManager)
        {
            Owner = this
        };

        if (dialog.ShowDialog() == true)
        {
            UpdateLicenseStatus();
        }
    }

    private void UpdateLicenseStatus()
    {
        int remaining = _licenseManager.GetRemainingDays();
        LicenseStatusText.Text = remaining > 0
            ? $"许可证剩余：{remaining} 天"
            : "许可证未激活或已过期";
    }
}
