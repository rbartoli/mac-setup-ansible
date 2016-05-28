# Mac Setup (Ansible)
An Ansible playbook and a bootstrap script to setup a new OS X 10.11 system.

## Features
- [homebrew](http://brew.sh/)
- [homebrew-cask](https://caskroom.github.io/)
- [zsh](http://www.zsh.org/)
- [oh-my-zsh](http://ohmyz.sh/)
- [node.js](https://nodejs.org/en/) installed using [nvm](https://github.com/creationix/nvm)

## Requirements
1. Restart your Mac.
2. Before OS X starts up, hold down Command-R and keep it held down until you see an Apple icon and a progress bar. Release. This boots you into Recovery.
3. From the _Utilities_ menu, select _Terminal_.
4. At the prompt type exactly the following and then press Return: `csrutil disable`
5. Terminal should display a message that SIP was disabled.
6. From the  menu, select _Restart_.

## Getting started
Ensure that you've followed the steps in Requirements.

```bash
$ git clone https://github.com/rbartoli/mac-setup-ansible.git
$ cd mac-setup-ansible
# customise all vars as needed
$ vim vars.yml
$ ./bootstrap.sh
```
