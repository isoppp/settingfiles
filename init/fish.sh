# fish install

script_dir=$(cd $(dirname $0); pwd)

if type fish >/dev/null 2>&1; then
  echo "skip: fish already installed"
else
  brew install fish

  echo "You will need to add: /usr/local/bin/fish to /etc/shells."
  echo "Then run: chsh -s /usr/local/bin/fish to make fish your default shell."

  read -n 1 -s -r -p "Press any key to continue"

  if [ -s "~/.config/fish/config.fish" ]; then
    cd $script_dir
    fishfiles_path=$(realpath ../fishfiles)/config.fish
    # echo source $fishfiles_path >> ~/.config/fish/config.fish
  fi
fi
