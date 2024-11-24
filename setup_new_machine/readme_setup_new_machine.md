
# Ubuntu New Machine Setup Script

This project provides a shell script to set up a new Ubuntu machine with essential daily-use software. The script automates the installation of commonly used tools, updates and upgrades the system, and reboots the machine after completing the setup.

## Features

- Updates and upgrades the system using `apt` or `nala` (if installed).
- Installs the following software:
  - **System Tools**: `neofetch`, `htop`, `bpytop`, `gufw`, `nala`
  - **Development Tools**: `git`, `vim`, `docker.io`
  - **Networking Tools**: `curl`, `wget`, `nginx`
  - **Fun Tools**: `cowsay`, `cmatrix`, `figlet`, `lolcat`
- Enables and starts Docker service.
- Reboots the system automatically after setup.

## Prerequisites

- A machine running Ubuntu (20.04 or later recommended).
- Root privileges (use `sudo` to run the script).

## Installation

 Clone or download this repository:
```bash
   git clone https://github.com/your-username/ubuntu-setup-script.git](https://github.com/sinzn/setup_new_ubuntu.git
   cd ubuntu-setup-script
   chmod +x setup_new_machine.sh
   sudo ./setup_new_machine.sh
```
