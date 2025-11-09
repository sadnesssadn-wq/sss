using System.Windows;

namespace RandomVideoPlayer;

public partial class App : Application
{
    private LicenseManager? _licenseManager;

    protected override void OnStartup(StartupEventArgs e)
    {
        base.OnStartup(e);

        _licenseManager = new LicenseManager();
        if (!_licenseManager.IsValid())
        {
            var licenseWindow = new LicenseWindow(_licenseManager);
            bool? result = licenseWindow.ShowDialog();
            if (result != true)
            {
                Shutdown();
                return;
            }
        }

        var mainWindow = new MainWindow(_licenseManager);
        mainWindow.Show();
    }
}
