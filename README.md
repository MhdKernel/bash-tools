# Bash Tools

This repository contains a collection of small Bash scripts created as my first project and my self for doing all i want in my personal pc easier to learn shell scripting and improve my skills. The scripts automate a few routine tasks like uploading a directory to GitHub and installing basic packages on a Debian-based system and etc.

## Scripts

- **`git_uploader.sh`** – Initializes a Git repository in a specified path, adds a remote URL, commits changes with a message you provide, and pushes to the `main` branch.
- **`automate_updater.sh`** – Updates system package lists, upgrades installed packages, and installs a recommended set of tools such as `curl`, `git`, `htop`, `vim`, `wget`, and `net-tools`.
- **`auto_mounter`** - Mount Drive to your linux System in this path `/media/user/share` if you have dual boot pc i reccomend this tool
- **`api_checker`** - هs a tool designed to help developers locate the owner or maintainer of specific pieces of code within a company project.
- **`main.sh`** – Presents a simple text menu that lets you run the Git uploader or the package installer.

## Usage

1. Give the scripts execute permission:

```bash
chmod +x main.sh 
```

2. Run the menu interface:

```bash
./main.sh
```

Follow the prompts to upload a project to GitHub or to install essential packages.
