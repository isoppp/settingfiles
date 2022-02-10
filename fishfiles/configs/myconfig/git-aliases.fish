# NOTE: Some of these aliases depend on `hub` being installed.

alias egc "vim $HOME/.gitconfig"
alias egi "vim $HOME/.gitignore"
alias g "git"
alias ga 'git add'
alias gaa 'git add -A' # Identical to "git add .; git add -u"
alias gai 'git add -i'
alias gap 'git add -p'
alias gb 'git branch'
alias gba 'git branch --all'
alias gbr 'git browse'
alias gbrf 'git branch -r -vv | fzf'
alias gc 'git commit'
alias gca 'git commit -a'
alias gcam 'git commit --amend'
alias gcbn 'git rev-parse --abbrev-ref HEAD | tr -d \'\n\' | pbcopy'
alias gcpb 'git rev-parse --abbrev-ref HEAD | tr -d \'\n\' | pbcopy'
alias gcm 'git commit -m'
alias gco 'git checkout'
alias gcof 'git branch | grep -v HEAD | string trim | fzf | read -l result; and git checkout "$result"'
alias gcobfm 'git checkout master && git fetch && git pull && git checkout -b'
alias gcob 'git checkout -b'
alias gcom 'git checkout master'
alias gcp 'git cherry-pick'
alias gcpa 'git cherry-pick --abort'
alias gcpc 'git cherry-pick --continue'
alias gd 'git diff'
alias gds 'git diff --staged'
# BROKEN
# Deletes merged branches. To protect a certain branch from deletion, add
# `| grep -v "BRANCH_TO_SAVE" |` after `grep -v "\*"`
# alias gdmb "git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d"
alias gdt 'git difftool'
alias gfa 'git fetch --all'
alias gfas 'git fetch --all; git status'
alias gl "git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date relative"
alias gp 'git push origin HEAD'
alias gpr 'git pull-request'
alias gpsuoh 'git push --set-upstream origin HEAD'
alias grb 'git rebase'
alias grba 'git rebase --abort'
alias grbc 'git rebase --continue'
alias grbip 'git rebase --interactive --preserve-merges'
alias grbp 'git rebase --preserve-merges'
alias grbpd 'git rebase --preserve-merges develop'
alias grbpm 'git rebase --preserve-merges master'
alias grh 'git reset HEAD'
alias grhard 'git reset --hard'
alias grp 'git remote prune'
alias gs 'git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gst 'git status'
alias t 'tig'
alias ta 'tig --all'
alias gfgp 'git fetch && git pull'
