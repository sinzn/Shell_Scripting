
# User Management Script

A **Linux shell script** to automate user account management tasks, such as creating, deleting, resetting passwords, and generating activity reports. This script is especially useful for system administrators managing multiple users.

---

## Features
1. **Create New Users**:
   - Add a single user with a username and password.

2. **Delete Users**:
   - Remove users along with their home directories.

3. **Reset Passwords**:
   - Reset passwords for existing users.

4. **Bulk User Creation**:
   - Create multiple users from a CSV file in the format: `username,password`.

5. **Generate User Activity Reports**:
   - Generate a report of all users with details like username, UID, and home directory.

---

## Requirements
- Linux system with root or `sudo` access.
- Shell environment (`bash`).
- Commands used: `useradd`, `passwd`, `userdel`, `awk`, `cut`, `grep`.

---

## How to Use

### 1. Clone or Create the Script
Save the script as `user_management.sh` in your working directory.

### 2. Make the Script Executable
Run the following command to give execute permissions:
```bash
chmod +x user_management.sh
sudo ./user_management.sh
```

## User Management Script
-----------------------
```
1. Create a new user
2. Delete a user
3. Reset a user's password
4. Bulk create users from CSV
5. Generate user activity report
6. Exit

Choose an option (1-6):
```

```
grep '^username:' /etc/passwd
cat /etc/passwd
last username
finger username 
```
