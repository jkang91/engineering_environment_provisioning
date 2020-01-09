#!/bin/bash

# Install Homebrew
printf -- 'Installing Homebrew... \n'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
wait

# Update Homebrew Cache and Tap Caskroom/Cask
brew update && \
brew tap caskroom/cask
wait

# Install JDK (Manual password input required)
printf -- 'Installing JDK... \n'
brew cask install adoptopenjdk
wait

# Install git
printf -- 'Installing git... \n'
brew install git
wait

# Install iTerm2
printf -- 'Installing iTerm... \n'
brew install iTerm2
wait

# Install WebEx
printf -- 'Installing WebEx... \n'
brew cask install webex-meetings
wait

# Install Chrome
printf -- 'Installing Chrome... \n ' && \
cd $HOME && \
brew cask install google-chrome && \
test -d /Applications/"Google Chrome.app"
wait

# Install Firefox
printf -- 'Installing Firefox... \n'
brew cask install firefox
wait

# Install IntelliJ Community Edition
printf -- 'Installing IntelliJ CE... \n'
brew cask install intellij-idea-ce
wait

# Install Xcode (Agree to TOS)
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install

# Add configuration to Bash/Zsh profile
# echo "foo" >> ~/.bash_profile
# OR echo "bar" >> ~/.zshrc
