# 服务器用途分析: 172.16.22.208

## 服务器信息
- **主机名**: WIN-S26R8R6H2P4
- **IP**: 172.16.22.208
- **数据库**: BPIHR_PRD (BPI Human Resources Production)

## 数据库分析
根据数据库表结构，这是一台**人力资源管理系统(HRMS)**服务器：

### 主要功能模块
1. **人事管理** (Personnel)
   - 员工基本信息
   - 职位信息
   - 联系方式

2. **请假管理** (Leave)
   - LeaveRequest - 请假申请
   - LeaveCollection - 请假汇总
   - LeaveRight - 请假权限
   - MsAnnualLeave - 年假管理

3. **薪资管理** (Salary)
   - PerSalary - 个人薪资
   - PerSalaryPosition - 职位薪资
   - MsRateSalaryForcast - 薪资预测

4. **培训管理** (Training)
   - PerTraining - 个人培训记录
   - TrnCourse - 培训课程
   - TrnLecturer - 培训讲师

5. **考勤管理** (Time Attendance)
   - TimeAttendance - 考勤记录
   - TimeInOutImport - 打卡导入

## 服务器角色
这是一台**数据库服务器 + Web应用服务器**：
- 运行SQL Server (MSSQLSERVER)
- 运行IIS Web服务器 (托管bppis.bpi.ac.th)
- 存储BPI学院的人力资源数据

## 数据价值
- 包含员工个人信息、薪资、考勤等敏感数据
- 有多个环境：PRD(生产)、UAT(测试)、PUY等
