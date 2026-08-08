
# Day 2 - Shell Scripting: Arguments, Functions, Special Variables, and Root Check

## Overview
This folder includes the practical scripts I created while learning **Shell Scripting** on Day 2. The main topics covered today were:

- **Handling Arguments in Scripts**
- **Using Functions in Shell Scripts**
- **Working with Exit Status Codes**
- **Understanding Special Variables in Shell Scripting**
- **Checking Root User Status**

## Files in this Folder

1. **arguments.sh**: A script demonstrating how to handle command-line arguments in a shell script.
2. **checkroot.sh**: A script that checks if the script is being run as the root user. This helps to ensure that administrative tasks are only executed with the necessary permissions.
3. **exit_status.sh**: A script that explains how to handle exit statuses to check whether commands succeed or fail.
4. **function1.sh**: A basic shell script that demonstrates the use of functions.
5. **function2.sh**: A more complex script using multiple functions to organize the code.
6. **specialvariables.sh**: A script showcasing the use of special variables like `$?`, `$0`, `$#`, etc.

## Key Concepts Covered
- **Arguments**: How to pass arguments to a shell script and access them using `$1`, `$2`, etc.
- **Functions**: How to define and call functions, making scripts more modular and reusable.
- **Exit Status**: How to use `$?` to capture the success or failure of a command.
- **Special Variables**: Special variables like `$0`, `$#`, and others to get script details and argument information.
- **Root Check**: How to check if the script is being run with root user privileges. The `checkroot.sh` script checks the user ID to ensure the script has the necessary permissions for administrative tasks.

## Practical Applications
- Scripts that automate tasks on Linux servers, like user management, installation of packages, and checking system health.
- Using arguments in scripts to pass configurations or input data dynamically.
- Writing functions to break down scripts into smaller tasks, making them easier to maintain and scale.
- Checking if a script is being run as root to perform administrative tasks.

## How to Use
To run each script, simply execute it in your terminal:

```bash
bash <script_name.sh>
