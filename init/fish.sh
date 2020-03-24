# fish install

script_dir=$(cd $(dirname $0); pwd)

if type fish >/dev/null 2>&1; then
  echo "skip: fish already installed"
else
  brew install fish
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish
fi

  if [ -s "~/.config/fish/config.fish" ]; then
    cd $script_dir
    fishfiles_path=$(realpath ../fishfiles)/config.fish
     echo source $fishfiles_path >> ~/.config/fish/config.fish
  fi
