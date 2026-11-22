
# Task 4: Bash Scripting — Automated Website Project Generator

## 1. What the Script Does

The `create_website.sh` script automatically generates a basic website project.

It creates:
- index.html
- css/style.css
- js/script.js
- README.md files
- css, js, and images directories

## 2. How to Execute the Script

First, navigate to the assignment directory:

```bash
cd ~/radius-zero_day/0x02-command_line
```

Make the script executable:

```bash
chmod +x task-4/create_website.sh
```

Execute the script:

```bash
./task-4/create_website.sh
```

## 3. Default Output Location

When no custom directory is provided, the project is generated at:

```bash
$HOME/radius-projects/website-project/
```

## 4. Custom Output Location

The script accepts a custom directory as its first argument.

Example:

```bash
./task-4/create_website.sh "$HOME/radius-projects/custom website"
```

The script supports directory paths containing spaces.

## 5. Protection Against Existing Directories

Before creating the project, the script checks whether the destination already exists.

If it exists:
- An error message is displayed.
- The script stops execution.
- Existing files are not overwritten or deleted.

## 6. Completion Message

After successfully generating the project, the script displays a message confirming success and showing the project location.

## 7. Testing

The script was tested using:
- Default output location.
- Custom output location.
- Custom directory containing spaces.
- Existing-directory protection.
- Generated file and directory verification.
