# SOC-Log-Analysis-Lab
# 🔐 Windows Event Log Analysis Lab (SOC Practice)

## 📌 Overview
This project demonstrates hands-on analysis of Windows Event Logs to detect potential security incidents such as failed login attempts, brute-force activity, and suspicious system behavior.

---

## 🛠 Tools Used
- Windows Event Viewer
- Log Parser Studio

---

## 🔍 Activities Performed

### 1. Accessed System & Security Logs
- Navigated through Windows Event Viewer
- Explored System and Security logs

---

### 2. Identified Key Security Events
- 4624 → Successful login
- 4625 → Failed login
- 4672 → Admin privileges assigned
- 4688 → Process creation
- 5379 / 5380 / 5382 → Credential manager / logon-related events

---

### 3. Filtered and Searched Logs
- Filtered logs using Event ID 4625
- Generated failed login attempts manually
- Used Find option to track user activity

---

### 4. Event Analysis & Correlation
- Observed multiple failed login attempts followed by successful login
- Identified brute-force pattern:

4625 → 4625 → 4625 → 4624

- Extracted:
  - Username
  - Timestamp
  - System activity

---

### 5. Advanced Analysis using Log Parser Studio

#### Query 1: Count Failed Logins
```sql
SELECT EventID, COUNT(*) AS EventCount
FROM 'security.evtx'
WHERE EventID = 4625
GROUP BY EventID
ORDER BY EventCount DESC
'''
---
