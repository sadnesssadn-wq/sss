using System.Text.Json;

namespace RandomVideoPlayer;

public sealed class LicenseManager
{
    private const string DateFormat = "yyyy-MM-dd HH:mm:ss";
    private readonly string _licensePath;

    public string? CurrentKey { get; private set; }
    public DateTime? Expiry { get; private set; }

    public LicenseManager()
    {
        _licensePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "license.json");
        Load();
    }

    public bool IsValid()
    {
        return Expiry.HasValue && Expiry.Value > DateTime.Now;
    }

    public int GetRemainingDays()
    {
        if (!Expiry.HasValue)
        {
            return 0;
        }

        TimeSpan remaining = Expiry.Value - DateTime.Now;
        return remaining > TimeSpan.Zero ? (int)Math.Ceiling(remaining.TotalDays) : 0;
    }

    public (bool isValid, int validDays) VerifyKey(string key)
    {
        if (string.IsNullOrWhiteSpace(key))
        {
            return (false, 0);
        }

        if (key.StartsWith("DAY-", StringComparison.OrdinalIgnoreCase))
        {
            return (true, 1);
        }

        if (key.StartsWith("MONTH-", StringComparison.OrdinalIgnoreCase))
        {
            return (true, 30);
        }

        return (false, 0);
    }

    public void Save(string key, int days)
    {
        CurrentKey = key;
        Expiry = DateTime.Now.AddDays(days);

        var data = new LicenseStorage
        {
            Key = CurrentKey,
            Expiry = Expiry?.ToString(DateFormat)
        };

        string json = JsonSerializer.Serialize(data, new JsonSerializerOptions
        {
            WriteIndented = true
        });
        File.WriteAllText(_licensePath, json);
    }

    public void Load()
    {
        if (!File.Exists(_licensePath))
        {
            CurrentKey = null;
            Expiry = null;
            return;
        }

        try
        {
            string json = File.ReadAllText(_licensePath);
            var data = JsonSerializer.Deserialize<LicenseStorage>(json);

            CurrentKey = data?.Key;
            if (DateTime.TryParseExact(data?.Expiry, DateFormat, null, System.Globalization.DateTimeStyles.None, out DateTime expiry))
            {
                Expiry = expiry;
            }
            else
            {
                Expiry = null;
            }
        }
        catch
        {
            CurrentKey = null;
            Expiry = null;
        }
    }

    private sealed class LicenseStorage
    {
        public string? Key { get; set; }
        public string? Expiry { get; set; }
    }
}
