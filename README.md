# Bash Shortcuts

## What is it

Bash shortcuts is a small bash program to allow for jumping to saved shortcuts and drive paths while also allowing you to set shortcuts to either a entered path or the current directory. 

## Use

- Clone this repository and add the folder to your path then use jp to launch the bash script
- On first run, if not created yet the program will create a "locations.txt" in the same directory as jp

### Add current directory
- To create a shortcut in the current directory type:
   ```jp -a```
- The program will then prompt for a shortcut and will store this in "locations.txt"

### Add any directory
- To create a shortcut to any directory type
  ```jp -d```
- The program will first prompt for the absolute path to the directory
- The program will then prompt for the shortcut name and will store this set in "locations.txt"

### Move to a shortcut
- To move to any directory represented by a shortcut type
   ```jp <shortcut_name>```
- This will then move you to the shortcut
- Note that because this uses ```bash exec``` it does open a new terminal session in the same window. Because of this it will not save any prior bash completions from your prior sessions 