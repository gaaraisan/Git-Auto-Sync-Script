# Git Auto Sync Script

This Bash script automates the process of pulling updates, adding changes, committing, and pushing them to a Git repository. It allows you to specify the repository path during execution, making it flexible for use with multiple repositories.

---

## Features

- **Automated `git pull`:** Syncs the local repository with the remote one.
- **Automated `git add`:** Adds all changes in the repository.
- **Custom commit message:** Prompts you to enter a commit message or uses a default one.
- **Automated `git push`:** Pushes changes to the remote repository.
- **Interactive repository selection:** Lets you specify the path to the repository when running the script.

---

## Requirements

- Linux-based operating system with Bash.
- Git installed.
- Access to the repository (read/write permissions).
- Configured Git credentials if pushing to a remote repository that requires authentication.

---

## Usage

1. **Clone or Copy the Script:**
   Save the script as `git_auto_sync.sh` in your desired directory.

2. **Make the Script Executable:**
   ```bash
   chmod +x git_auto_sync.sh
   ```

3. **Run the Script:**
   ```bash
   ./git_auto_sync.sh
   ```

4. **Follow the Prompts:**
   - Enter the path to the Git repository.
   - Provide a commit message when prompted (or leave blank for a default message).

---

## Script Workflow

1. **Checks Repository Path:** Verifies if the provided directory exists and is a valid Git repository.
2. **Pulls Updates:** Runs `git pull` to sync the local repository with the remote.
3. **Adds Changes:** Automatically stages all changes using `git add .`.
4. **Commits Changes:** Prompts for a commit message or uses "Automated Commit" as the default.
5. **Pushes Changes:** Runs `git push` to send changes to the remote repository.

---

## Example

Here’s a sample execution:

```bash
$ ./git_auto_sync.sh
Enter the path to the repository: /home/user/my_project
Updating local repository (git pull)...
Already up to date.
Adding changes (git add)...
Enter commit message: Updated documentation
Creating commit (git commit)...
[main d2f3e7a] Updated documentation
Pushing changes to remote repository (git push)...
Operation completed successfully!
```

---

## Troubleshooting

- **Invalid Path:** Ensure the specified directory exists and contains a `.git` folder.
- **Permission Errors:** Run the script with `sudo` if necessary:
  ```bash
  sudo ./git_auto_sync.sh
  ```
- **Authentication Issues:** Ensure your Git credentials are properly configured (e.g., SSH keys or HTTPS access tokens).

---

## Customization

Feel free to modify the script for additional functionality, such as:
- Handling specific branches.
- Working with multiple repositories.
- Adding logging for auditing purposes.

---

## Disclaimer

This script is provided "as is" without warranty. Test it with non-critical repositories before using it in production.
