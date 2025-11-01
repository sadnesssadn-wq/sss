# Vnpost EMS Application Collection

## ?? Downloaded Applications

Successfully downloaded **4 Vnpost-related Android applications** (101.40 MB total):

### 1. com.vnpost.apk (35.85 MB)
- **Package**: com.vnpost
- **Type**: XAPK (Multi-APK bundle)
- **MD5**: 261e3e88aaf68acb4a1b3e288e63c2f3
- **Description**: Main Vnpost application
- **Contents**:
  - Base APK (11.37 MB)
  - ARM64-v8a native library (26.00 MB)
  - Configuration APKs (MDPI, FR, EN)
  - Icon and manifest

### 2. vn.vnpost.myvnp.apk (50.45 MB)
- **Package**: vn.vnpost.myvnp
- **Type**: Standard APK
- **MD5**: 87ddecff41684b7c96b0bf0ae06fd5ad
- **Description**: MyVNP - Vietnam Post customer portal

### 3. vn.vnpost.collectaddress.apk (2.01 MB)
- **Package**: vn.vnpost.collectaddress
- **Type**: Standard APK
- **MD5**: 78316d8aa553cfda0d91f5d22c76b5b0
- **Description**: Address collection tool for Vietnam Post couriers

### 4. com.datapost.posteyehrm.apk (13.09 MB)
- **Package**: com.datapost.posteyehrm
- **Type**: Standard APK
- **MD5**: 57f7fb04c29a74dab97aa7bd2b3ee936
- **Description**: Posteye HRM - Employee management system

## ?? Developer Information

- **Developer**: VIETNAM POST
- **Play Store**: https://play.google.com/store/apps/developer?id=VIETNAM+POST

## ?? Discovery Method

1. **Reconnaissance**: 
   - Searched Play Store for "vnpost" keyword
   - Identified developer "VIETNAM POST"
   - Enumerated all apps by developer
   
2. **Download Sources**:
   - Primary: APKPure (d.apkpure.net)
   - Backup: APKCombo, APKMirror
   
3. **Verification**:
   - All files verified with ZIP integrity check
   - MD5 checksums calculated
   - File structure analyzed

## ?? Directory Structure

```
vnpost_apps/
??? apks_verified/           # Downloaded APK files (4 apps)
?   ??? com.vnpost.apk
?   ??? vn.vnpost.myvnp.apk
?   ??? vn.vnpost.collectaddress.apk
?   ??? com.datapost.posteyehrm.apk
??? FINAL_REPORT.txt         # Detailed analysis report
??? README.md                # This file
??? *.sh                     # Download and analysis scripts
```

## ?? Next Steps for Red Team Analysis

1. **APK Decompilation**:
   ```bash
   # Use jadx or apktool
   jadx -d output/ apks_verified/com.vnpost.apk
   apktool d apks_verified/com.vnpost.apk
   ```

2. **Static Analysis**:
   - Extract API endpoints
   - Find hardcoded credentials/keys
   - Analyze certificate pinning
   - Check for debug/test endpoints
   - Review AndroidManifest.xml permissions

3. **Dynamic Analysis**:
   - Install on rooted device/emulator
   - Use Frida for runtime hooking
   - Intercept network traffic (mitmproxy)
   - Dump memory for sensitive data

4. **API Enumeration**:
   - Extract base URLs
   - Test authentication mechanisms
   - Look for IDOR vulnerabilities
   - Test rate limiting

## ?? Play Store Links

- com.vnpost: https://play.google.com/store/apps/details?id=com.vnpost
- vn.vnpost.myvnp: https://play.google.com/store/apps/details?id=vn.vnpost.myvnp
- vn.vnpost.collectaddress: https://play.google.com/store/apps/details?id=vn.vnpost.collectaddress
- com.datapost.posteyehrm: https://play.google.com/store/apps/details?id=com.datapost.posteyehrm

## ? File Integrity

All APK files have been verified:
- ? ZIP structure intact
- ? No corruption detected
- ? Ready for analysis

---

**Collection Date**: 2025-11-01  
**Total Size**: 101.40 MB  
**Total Apps**: 4
