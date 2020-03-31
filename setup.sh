xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

brew install watchman zsh git nvm awscli terraform jq kubectl
nvm install node && nvm use default

sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh && cd .. && rm -rf fonts

brew tap caskroom/cask
brew cask install docker \
spectacle \
google-chrome \
firefox \
microsoft-edge \
iterm2 \
visual-studio-code \
postman \
slack \
zoomus \
spotify

