#!/bin/bash
read -p "Enter Your Project Path : " pr_path
read -p "Enter Repository URL (e.g. https://github.com/user/repo) : " repo_url
read -p "Enter Your Commit Message : " commit_message
cd "$(eval echo $pr_path)" || { echo "Path not found!"; exit 1; }
git init
git remote remove origin 2>/dev/null
git remote add origin "$repo_url"
git add -A
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    git commit -m "${commit_message}"
fi
git pull origin main --allow-unrelated-histories --no-rebase --no-edit
git commit -m "${commit_message}"
git push -u origin main
