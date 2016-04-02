# Project
An Ansible playbook and a bootstrap script to setup a new OS X 10.11 system.

## Features
- [homebrew](http://brew.sh/)
- [homebrew-cask](https://caskroom.github.io/)
- [zsh](http://www.zsh.org/)]
- [oh-my-zsh](http://ohmyz.sh/)]
- [npm](https://babeljs.io/docs/learn-es2015)]

## Requirements
1. Restart your Mac, and as soon as the screen turns black hold down ⌘R until the Apple logo appears on your screen, then release the keys. Wait for recovery mode to start.
3. Now click on the "Utilities" menu, and then "Terminal".
4. Type `csrutil disable` and then press ENTER

## Getting started
Ensure that you've followed the steps in Requirements.
```bash
$ git clone https://github.com/rbartoli/mac-setup-ansible.git
$ cd mac-setup-ansible
# customise all vars as needed
$ vim vars.yml
$ ./bootstrap.sh
```
