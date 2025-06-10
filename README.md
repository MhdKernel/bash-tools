# Bash Tools

This repository contains a collection of small Bash scripts created as my first project to learn shell scripting and improve my skills. The scripts automate a few routine tasks like uploading a directory to GitHub and installing basic packages on a Debian-based system.

## Scripts

- **`git_uploader.sh`** – Initializes a Git repository in a specified path, adds a remote URL, commits changes with a message you provide, and pushes to the `main` branch.
- **`automate_updater.sh`** – Updates system package lists, upgrades installed packages, and installs a recommended set of tools such as `curl`, `git`, `htop`, `vim`, `wget`, and `net-tools`.
- **`main.sh`** – Presents a simple text menu that lets you run the Git uploader or the package installer.

## Usage

1. Give the scripts execute permission:

```bash
chmod +x main.sh git_uploader.sh automate_updater.sh
```

2. Run the menu interface:

```bash
./main.sh
```

Follow the prompts to upload a project to GitHub or to install essential packages.
