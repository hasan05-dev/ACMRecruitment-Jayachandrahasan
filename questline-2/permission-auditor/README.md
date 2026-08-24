# Permission Auditor

## how it works ? :
this script checks a folder for Files that might be security risks. it looks for three things :
1. Files that have 777 permission (anyone can read, write and execute them).
2. Files that belong to the root user.
3. Files that have the SUID bit enabled.

## Commands used :
1. 'find' : to search through all folders and sub-folders.
2. '-perm 777' : finds open permissions.
3. '-user root' : finds root files.
4. '-perm /4000' : finds SUID files.
5. 'wc -l' : counts how many items were found in total.
6. '2>/dev/null' : blocks permission errors from showing up in the terminal.
