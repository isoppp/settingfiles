mkdir -p ~/workspace/works
mkdir -p ~/workspace/personal
mkdir -p ~/workspace/oss

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
cp ../common_dotfiles/.gitignore_global ~/.gitignore_global

git config --global user.name "isoppp"
git config --global user.email "prog@d2deck.com"
git config --global core.excludesfile ~/.gitignore_global
