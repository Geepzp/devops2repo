# Linux Command Line Mastery

## Project Overview

This repository documents my hands-on learning and practical exercises in Linux command-line administration as part of my AI DevOps Engineering training.

The project focuses on developing foundational Linux skills required for system administration, infrastructure management, troubleshooting, automation, and DevOps engineering.

All exercises are designed to be performed using **Ubuntu Linux running on Windows Subsystem for Linux (WSL)**.

The repository contains command documentation, Bash automation scripts, sample files, execution logs, and terminal screenshots demonstrating practical experience.

## Learning Objectives

The objectives of this project are to:

1. Understand Linux file and directory management.
2. Navigate the Linux filesystem using absolute and relative paths.
3. Monitor system resources and manage users, groups, and permissions.
4. Understand basic Linux networking and connectivity troubleshooting.
5. Use pipes and redirection to process command outputs.
6. Develop reusable Bash scripts using variables, conditionals, and loops.
7. Document practical exercises and maintain version-controlled work using Git and GitHub.

## Tools and Environment

| Tool | Description |
|---|---|
| Operating System | Ubuntu Linux |
| Environment | Windows Subsystem for Linux (WSL) |
| Shell | Bash |
| Version Control | Git |
| Repository Hosting | GitHub |
| Text Editor | Nano / Visual Studio Code |
| Automation | Bash Shell Scripting |

## Repository Structure

```text
linux-command-line-mastery/
│
├── README.md
│
├── docs/
│   └── notes.md
│
├── scripts/
│   ├── setup.sh
│   └── system_health.sh
│
├── screenshots/
│   ├── 01-file-management.png
│   ├── 02-directory-navigation.png
│   ├── 03-system-monitoring.png
│   ├── 04-user-permissions.png
│   ├── 05-networking.png
│   ├── 06-pipes-redirection.png
│   └── 07-shell-scripting.png
│
├── artifacts/
│   ├── tools.txt
│   ├── setup.log
│   └── system-health.log
│
└── .gitignore
```

**Directory Descriptions**

- `docs/`: Detailed notes, command outputs, observations, and troubleshooting documentation.
- `scripts/`: Bash scripts developed during the practical exercises.
- `screenshots/`: Terminal screenshots demonstrating command execution.
- `artifacts/`: Generated sample files, logs, and configuration extracts.
- `README.md`: Main project documentation.

## Practical Exercises

### 1. File Management

**Objective:** Learn how to create, copy, move, rename, delete, view, and search files and directories.

**Commands covered:**

```bash
touch file1.txt
cp file1.txt file1_backup.txt
mv file1_backup.txt renamed_file.txt
rm -i renamed_file.txt
mkdir documents
rm -r documents

cat tools.txt
less tools.txt
head -n 3 tools.txt
tail -n 2 tools.txt
find . -name "*.txt"
grep "Docker" tools.txt
```

**Learning outcome:**

Developed an understanding of file manipulation, recursive directory operations, interactive deletion, and searching for files and text within the Linux filesystem.

### 2. Directory Navigation

**Objective:** Understand the Linux filesystem hierarchy and navigate directories efficiently.

**Commands covered:**

```bash
pwd
cd ~
cd /etc
cd ..
mkdir -p projects/devops/scripts
ls -la
find projects -type d
```

**Key concepts:**

- Absolute and relative paths
- Home directory navigation
- Parent and current directories
- Nested directory creation
- Standard Linux directories such as `/etc`, `/var`, and `/tmp`

**Learning outcome:**

Gained practical knowledge of Linux directory structures and how to navigate and organize files efficiently.

### 3. System Monitoring and Administration

**Objective:** Monitor system performance and understand Linux user, group, and permission management.

**System monitoring commands:**

```bash
ps aux
top
df -h
free -m
uptime
```

**User and group management:**

```bash
sudo groupadd devops
sudo useradd -m -s /bin/bash devopsuser
sudo usermod -aG devops devopsuser
id devopsuser
groups devopsuser
```

**File permissions and ownership:**

```bash
touch secure.txt
chmod 600 secure.txt
sudo chown devopsuser:devops secure.txt
ls -l secure.txt
```

**Learning outcome:**

Learned how Linux manages processes, memory, storage, system uptime, user accounts, group membership, file permissions, and ownership.

I also gained a better understanding of the importance of administrative privileges and the `sudo` command.

### 4. Networking Basics

**Objective:** Understand how to verify connectivity, inspect network interfaces, and identify listening ports.

**Commands covered:**

```bash
ping -c 4 google.com
ip addr
ss -tuln
sudo ss -tulnp
```

**Learning outcome:**

Developed foundational skills in checking network connectivity, identifying IP addresses, inspecting TCP/UDP ports, and understanding network services.

These commands are useful when troubleshooting connectivity issues on Linux servers.

### 5. Pipes and Redirection

**Objective:** Understand how to redirect command outputs, capture errors, and combine commands for data processing.

**Commands covered:**

```bash
echo "Linux Administration Lab" > output.txt
echo "Learning Bash scripting" >> output.txt

ls /nonexistent_directory 2> errors.log

cat tools.txt | grep "Docker"

printf "Docker\nLinux\nDocker\nAnsible\n" | sort | uniq -c

ps aux | grep '[s]sh'
```

**Key concepts:**

| Operator | Function |
|---|---|
| `>` | Redirect output and overwrite a file |
| `>>` | Append output to an existing file |
| `2>` | Redirect standard error |
| `\|` | Pass output from one command to another |

**Learning outcome:**

Learned how to combine Linux commands to filter information, process text, capture errors, and create logs.

### 6. Bash Shell Scripting

**Objective:** Develop a reusable Bash script that automates directory creation, file generation, and logging.

**Script:** `scripts/setup.sh`

The script demonstrates:

- Variable declaration and usage
- Conditional statements (`if`, `else`)
- Iteration using `for` loops
- Bash functions
- Automated directory creation
- File generation
- Timestamped logging
- Basic error handling

**Execution:**

```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

**Expected generated directory structure:**

```text
automated-project/
├── backups/
├── config/
├── logs/
├── scripts/
│   ├── file1.sh
│   ├── file2.sh
│   └── file3.sh
└── setup.log
```

**System monitoring automation:**

The `system_health.sh` script collects system information and records the results in a log file.

```bash
chmod +x scripts/system_health.sh
./scripts/system_health.sh
```

**Learning outcome:**

Developed an understanding of how Bash scripts can automate repetitive Linux administrative tasks and provide consistent execution and logging.

## How to Run the Project

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/linux-command-line-mastery.git
```

Navigate into the project directory:

```bash
cd linux-command-line-mastery
```

Make the scripts executable:

```bash
chmod +x scripts/*.sh
```

Execute the scripts:

```bash
./scripts/setup.sh
./scripts/system_health.sh
```

Review the generated logs:

```bash
cat artifacts/system-health.log
```

The setup script stores its log in `~/linux-lab/automated-project/setup.log`.

## Completion Checklist

Update the checkboxes below after executing and verifying each task.

- [ ] Created and managed files using `touch`, `cp`, `mv`, and `rm`
- [ ] Viewed and searched file contents using `cat`, `less`, `head`, `tail`, `find`, and `grep`
- [ ] Navigated directories using absolute and relative paths
- [ ] Created nested directories using `mkdir -p`
- [ ] Inspected system processes, memory, disk space, and uptime
- [ ] Practised Linux user and group management
- [ ] Configured file permissions and ownership
- [ ] Tested network connectivity and inspected network interfaces
- [ ] Practised pipes and output/error redirection
- [ ] Developed a Bash automation script
- [ ] Made shell scripts executable and tested their execution
- [ ] Generated and reviewed execution logs
- [ ] Captured terminal screenshots as practical evidence
- [ ] Documented command outputs and troubleshooting observations
- [ ] Committed and pushed the completed project to GitHub

## Challenges and Troubleshooting

Some important considerations encountered or identified during the exercises include:

**1. Understanding file permissions**

Linux permissions determine who can read, write, or execute files. Commands such as `chmod`, `chown`, and `ls -l` help manage and verify access.

**2. Administrative privileges**

Some Linux administration tasks require elevated privileges. The `sudo` command allows authorized users to execute administrative commands.

**3. Working within WSL**

Ubuntu running on WSL provides a Linux command-line environment, although certain networking and system monitoring behaviours may differ from a standalone Linux installation.

**4. Script execution permissions**

Bash scripts may require executable permissions before they can be launched directly.

```bash
chmod +x scripts/setup.sh
```

**5. Avoiding accidental file deletion**

Commands such as `rm -r` can permanently delete directory contents. Using `rm -i` for interactive confirmation helps reduce accidental deletion risks.

Detailed command outputs, actual troubleshooting steps

