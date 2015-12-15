#!/bin/bash

set -e

# Update all OSX packages
sudo softwareupdate -i -a

# Download and install Xcode
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Installing Xcode..."
    xcode-select --install
    xcodebuild -license
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Installing ansible..."
    brew update
    brew install ansible
fi

# Modify the PATH
# This should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH

# Start Ansible
ansible-playbook -K playbook.yml
