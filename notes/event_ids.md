##🔐 Login / Account Activity
•	4624 → Successful login ✅ 
•	4672 → Special privileges assigned (admin login) 🔥 
•	4798 / 4799 → Group membership enumeration (someone checking users/groups) 
👉 These are important for detecting suspicious access

---

##⚙️ Process & System Activity
•	4688 → New process created (VERY IMPORTANT 🔥)
👉 Shows what programs are running (cmd, powershell, etc.) 
•	4902 / 4907 → Audit policy changes
👉 Someone changed logging settings (⚠️ suspicious sometimes)

---

##🔄 Session / Credential Activity
•	5379 / 5380 / 5382 → Credential manager / logon-related events
👉 Related to stored credentials 

---

##🚨 Security / System Events
•	5033 → Firewall blocked something 
•	1100 → Event logging service stopped ⚠️ (Possible log tampering or attacker activity) 

---
###🧩 Device / System
•	6417 → Device connected (USB etc.)

Multiple 4625 followed by 4624 → Possible brute-force success
4672 → Check if attacker got admin privileges
## 🔐 Login / Account Activity
- 4624 → Successful login  
- 4625 → Failed login  
- 4672 → Special privileges assigned (admin login 🔥)  
- 4798 / 4799 → Group/user enumeration  

👉 Detection:
Multiple 4625 followed by 4624 → Possible brute-force attack  

---

## ⚙️ Process & System Activity
- 4688 → New process created 🔥 (cmd, powershell etc.)  
- 4902 / 4907 → Audit policy changes ⚠️  

---

## 🔑 Credential Activity
- 5379 / 5380 / 5382 → Credential manager events  

---

## 🛡️ Security / System Events
- 5033 → Firewall blocked activity  
- 1100 → Event logging stopped ⚠️ (possible attacker behavior)  

---

## 💻 Device Activity
- 6417 → Device connected (USB etc.)
