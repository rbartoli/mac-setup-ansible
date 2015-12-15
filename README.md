# Project
This project is an Ansible playbook to bootstrap a new OS X 10.11 system.

### Requirements
1. Restart your Mac, and as soon as the screen turns black hold down ⌘R until the Apple logo appears on your screen, then release the keys. Wait for recovery mode to start.
2. Now click on the "Utilities" menu, and then "Terminal". 
3. Type `csrutil disable` and the press ENTER

### Bootstrap new system
Open Terminal.app, then paste the following command:
```bash
git clone 
cd mac-setup-2
# customise all vars as needed
vim vars.yml 
./bootstrap.sh
```
