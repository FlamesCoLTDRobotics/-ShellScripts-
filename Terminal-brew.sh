# Check if Homebrew is already installed
if test ! $(which brew); then
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Tap the M1 support tap
brew tap homebrew/cask-versions

# Install Rosetta 2
brew cask install apple-silicon-support

# Install Homebrew-Cask
brew tap homebrew/cask

# Install Homebrew-Services
brew tap homebrew/services

# Set Homebrew-Services to start on login
ln -sfv /usr/local/opt/homebrew-services/*.plist ~/Library/LaunchAgents
