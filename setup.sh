# install xcode build tools

xcode-select --install

sudo xcodebuild -license accept

# install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# setup zsh_profile and other dot files

cd ~

# configure git

git config --global user.name dbenshimol

git config --global user.email dbenshimol@null.computer

mkdir ~/dev

sudo softwareupdate -ia; brew update ; brew upgrade ; brew cask upgrade ; brew cleanup ; brew doctor —verbose ; mas upgrade ; sudo reboot
