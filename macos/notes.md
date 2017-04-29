# MacOS



 - Use [iTerm2](https://www.iterm2.com/) if only for the [shell integration](https://www.iterm2.com/documentation-shell-integration.html) pieces
 - Free window manager: https://www.spectacleapp.com/
     + [shortcuts](https://github.com/eczarny/spectacle#keyboard-shortcuts)



```bash
# Get homebrew
# Modified from: https://github.com/pathikrit/mac-setup-script/blob/master/setup.sh
if test ! $(which brew); then
  echo "Installing Xcode ..."
  xcode-select --install

  echo "Installing Homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew ..."
  brew update
  brew upgrade
fi


cd ~/Downloads
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh -b -p $HOME/miniconda3

export PATH="$HOME/miniconda3/bin:$PATH"

```

