# Gitflow Remove Branch
This script allows you to delete a branch from your local and remote Git repository.


## Usage
Run the script by typing ./delete-branch.sh(remember to use chmod +x for permission execution) in the terminal.

1. Enter the name of the branch you want to delete when prompted.<br>

2. The script will check if the branch exists locally. If it does, it will be deleted locally.<br>

3. The script will then check if the branch exists remotely. If it does, it will be deleted remotely. <br>

4. The script will provide output messages indicating whether the branch was deleted locally, remotely or if it did not exist in either location.

## Script Details
The script uses the following Git commands:

1. git show-ref - checks if the branch exists locally <br>
2. git branch -D - deletes the branch locally <br>
3. git ls-remote - checks if the branch exists remotely <br>
4. git push --delete - deletes the branch remotely

## Note
Be careful when deleting a branch, as this action cannot be undone. Ensure that you have committed all necessary changes and have a backup before running this script.
