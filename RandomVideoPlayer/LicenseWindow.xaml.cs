using System.Windows;

namespace RandomVideoPlayer;

public partial class LicenseWindow : Window
{
    private readonly LicenseManager _licenseManager;

    public LicenseWindow(LicenseManager licenseManager)
    {
        InitializeComponent();
        _licenseManager = licenseManager;
    }

    private void ActivateButton_Click(object sender, RoutedEventArgs e)
    {
        string key = LicenseKeyBox.Text.Trim();
        if (string.IsNullOrWhiteSpace(key))
        {
            MessageBox.Show(this, "请输入卡密。", "提示", MessageBoxButton.OK, MessageBoxImage.Information);
            return;
        }

        var (isValid, days) = _licenseManager.VerifyKey(key);
        if (!isValid)
        {
            MessageBox.Show(this, "卡密无效，请确认后重新输入。", "错误", MessageBoxButton.OK, MessageBoxImage.Error);
            return;
        }

        _licenseManager.Save(key, days);
        MessageBox.Show(this, $"激活成功！有效期 {days} 天。", "成功", MessageBoxButton.OK, MessageBoxImage.Information);
        DialogResult = true;
    }

    private void CancelButton_Click(object sender, RoutedEventArgs e)
    {
        DialogResult = false;
    }
}
