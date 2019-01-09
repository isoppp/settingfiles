#!/usr/local/bin/fish

if type -q fisher
  echo "skip: fisher already installed"
else
# fisher
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

  # fisher first
  if not functions -q fisher
      set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
      curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
      fish -c fisher
  end

  fish -c "fisher add decors/fish-ghq && fisher add jethrokuan/z && fisher add ponko2/fish-plugin-peco"
end

