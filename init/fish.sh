# fish install
script_dir=$(cd $(dirname $0); pwd)

if type fish >/dev/null 2>&1; then
  echo "skip: fish already installed"
else
  # install fish via homebrew
  brew install fish

  # add shell and change default
  echo /usr/local/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/local/bin/fish

  # add config file path to default config
  fishfiles_path=$(realpath ../fishfiles)/config.fish
  echo source $fishfiles_path
fi
