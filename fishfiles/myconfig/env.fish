# Linux
set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
set -gx PATH $PATH ~/bin # tig
set -x -U GOPATH $HOME/go
set -gx PATH $PATH ~/go/bin # ghq
set -gx PATH $PATH ~/.fzf/bin # fzf

# Linux and Mac
status --is-interactive; and source (anyenv init -| psub)
