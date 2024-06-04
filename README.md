
# Gitflow Remove Branch

This script allows you to delete a branch from both your local and remote Git repositories.

## Usage

1. **Make the script executable:**

    ```sh
    chmod +x delete-branch.sh
    ```

2. **Run the script:**

    ```sh
    ./delete-branch.sh
    ```

3. **Follow the prompts:**

    - Enter the name of the branch you want to delete.

## How It Works

1. The script checks if the branch exists locally:
    - If it does, the branch is deleted locally.
    - If it does not, a message is displayed indicating the branch does not exist locally.

2. The script then checks if the branch exists remotely:
    - If it does, the branch is deleted remotely.
    - If it does not, a message is displayed indicating the branch does not exist remotely.

3. Output messages will indicate the status of the deletion process for both local and remote branches.

## Script Details

The script uses the following Git commands:

1. `git show-ref` - Checks if the branch exists locally.
2. `git branch -D` - Deletes the branch locally.
3. `git ls-remote` - Checks if the branch exists remotely.
4. `git push --delete` - Deletes the branch remotely.

## Note

Be careful when deleting a branch, as this action cannot be undone. Ensure that you have committed all necessary changes and have a backup before running this script.
