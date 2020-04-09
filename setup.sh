xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

brew install watchman zsh git nvm awscli terraform jq kubectl

sudo chmod -R 755 zsh
for f in $(compaudit);do sudo chown $(whoami):admin $f;done;

mkdir ~/.nvm

echo 'export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc

nvm install node && nvm use default

npm install -g typescript ts-node

sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh && cd .. && rm -rf fonts

brew tap homebrew/cask-cask
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

