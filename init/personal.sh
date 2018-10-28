mkdir -p ~/works
mkdir -p ~/tools
mkdir -p ~/ghq
mkdir -p ~/oss
mkdir -p ~/personal

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
cp ../common_dotfiles/.gitignore_global ~/.gitignore_global

git config --global user.name "isoppp"
git config --global user.email "prog@d2deck.com"
