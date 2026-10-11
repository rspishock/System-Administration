# System-Administration
A collection of system administration scripts

Scripts are tested for functionality on an Ubuntu 24.04.04 server running in VirtualBox.

## Scripts
### Bash
#### user_remove.sh
Note: Script must be run as root

Parses a list of usernames, creates a backup of their home directory and then removes the account.

#### Usage:
`./user_remove.sh <FILE NAME>`

#### user_add.sh
Note: Script must be run as root

Parses a list of usernames and adds them to the system.
### Usage:
`./user_add.sh <FILE NAAME>`

### Windows (batch/PowerShell)
## Misc.
- Test Files/users.txt
A text file containing multiple user names to test against.