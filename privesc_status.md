# 提权状态

## 当前情况
- **权限**: NT Service\MSSQLSERVER
- **可用权限**: SeImpersonatePrivilege (Enabled)
- **问题**: reg save需要SYSTEM权限
- **没有**: SeBackupPrivilege, SeRestorePrivilege

## 结论
**必须提权到SYSTEM才能转储SAM**

## 下一步
需要找到一个可行的提权方法，利用SeImpersonatePrivilege
