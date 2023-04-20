#!/usr/bin/env bash

# Ask for the branch name to delete
read -p "Enter the name of the branch to delete: " branch_name

# Check if the branch exists locally
if git show-ref --verify --quiet "refs/heads/${branch_name}"; then
  # If it exists locally, delete it locally
  git branch -D $branch_name
  echo "Deleted local branch: $branch_name"
else
  # If it doesn't exist locally, display a message
  echo "Local branch $branch_name does not exist."
fi

# Check if the branch exists remotely
if git ls-remote --exit-code --heads origin $branch_name; then
  # If it exists remotely, delete it remotely
  git push --delete origin $branch_name
  echo "Deleted remote branch: $branch_name"
else
  # If it doesn't exist remotely, display a message
  echo "Remote branch $branch_name does not exist."
fi
