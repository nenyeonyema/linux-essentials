# Day 4 - Environment Variables and Shell Configurations  

## Overview  

This script, `envs_vars.sh`, is designed to demonstrate the use of environment variables in a Linux shell environment. It allows users to set environment variables based on user input, which can be utilized in subsequent scripts and sessions. Additionally, it shows how to persist environment variables by updating the `.bashrc` file.  

## Purpose  

The main goals of this script are to:  
- Collect user input for their name and DevOps level.  
- Set environment variables temporarily for the current session.  
- Persist these variables by adding them to the `.bashrc` file for automatic loading in future terminal sessions.  
- Create a greeting script that utilizes the stored environment variables.  

## Prerequisites  

- A Linux-based operating system with Bash installed.  
- Basic knowledge of using the terminal and executing scripts.  
- Permissions to modify the `.bashrc` file and run scripts.  

## Script Breakdown  

1. **Setting Up**: The script begins by printing a message indicating the start of the environment variable setup.  
   
2. **User Input**:  
   - Prompts the user to enter their name.  
   - Prompts the user to enter their DevOps level.  

3. **Export Environment Variables**:  
   - Sets the `MY_NAME` environment variable based on user input.  
   - Sets the `DEVOPS_LEVEL` environment variable.  

4. **Persisting Variables**:  
   - Appends the `DEVOPS_LEVEL` variable to `.bashrc` to ensure it is available in future sessions.  
   - Updates the `PATH` variable to include `$HOME/bin`.  

5. **Creating a Greeting Script**:  
   - Generates a new script called `greet.sh` that uses the environment variables to display a personalized greeting message.  
   - Grants execute permissions to `greet.sh` and runs it.  

6. **Completion Message**: Prints a message indicating that the environment variable setup is complete.  

## Usage  

1. **Clone the Repository** or copy the script to your local machine.  
2. **Make the Script Executable**:  
```bash  
   chmod +x envs_vars.sh  
```
3. Run the Script:
 `./envs_vars.sh`

4. Follow the Prompts: Enter your name and DevOps level when prompted.
5. Check the Greeting: After the script execution, the greeting script greet.sh will run automatically, greeting you with your name and DevOps level.

### Example Output
```bash
Setting environment variables and Shell configurations.  
Enter your name: Genevieve  
Enter your DevOps level: Intermediate  
Hello, Genevieve! Welcome to Day 4 of my DevOps learning series; Linux Essentials  
You're currently learning at the Intermediate level!  
Environment variables setup complete!
```
## Notes
The environment variables set in this script are temporarily stored for the session. After the session ends, they will be lost unless persisted in the .bashrc.
Modifications to the .bashrc file will take effect in new terminal sessions; you can reload it using source ~/.bashrc to update the current session.
Contributing
If you have suggestions or improvements for this script, feel free to open an issue or submit a pull request.

