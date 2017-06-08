### 日本語フォルダ名を英語にする

`rm ~/Downloads/.localized | rm ~/Documents/.localized | rm ~/Applications/.localized | rm ~/Desktop/.localized | rm ~/Library/.localized | rm ~/Movies/.localized | rm ~/Pictures/.localized | rm ~/Music/.localized | rm ~/Public/.localized`

### 不可視ファイルの表示

`defaults write com.apple.finder AppleShowAllFiles -boolean true`

`killall Finder`

### github git config

```
git config --global user.name "isoppp"
git config --global user.email "prog@d2deck.com"
```

```
git config user.name "isoppp"
git config user.email "prog@d2deck.com"
```

```
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='isoppp'; GIT_AUTHOR_EMAIL='prog@d2deck.com'; GIT_COMMITTER_NAME='isoppp'; GIT_COMMITTER_EMAIL='prog@d2deck.com';" HEAD 
git config --local user.name isoppp
git config --local user.email prog@d2deck.com
```

### browser sync

`browser-sync start --proxy "YOUR DOMAIN" --no-ghost-mode`
`

`browser-sync start --server --files "**/*"`

