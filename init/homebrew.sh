#myBrew=( coreutils fzf ghq peco pngquant hub)
myBrew=( fzf gh tig tree jq jwt-cli asdf fish)
#myCaskBrew=( qlcolorcode qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo )

# Run installs
echo "Installing Homebrew packages"
for i in ${myBrew[*]}
do
    brew install $i 2>/dev/null
done

echo "Installing Homebrew Cask packages"
for i in ${myCaskBrew[*]}
do
    brew cask install $i 2>/dev/null
done
