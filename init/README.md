## 流れ

- Xcodeを裏でインストールしていく

```
$ cd init
$ bash personal.sh

# ...install homebrew
$ bash homebrew.sh

# ...install fish via homebrew (`berw install fish`)
$ bash fish.sh
```

## Keyboard

- caps lockの上書きはkarabinerで行う
- Command + Shift + Aの衝突
  - https://intellij-support.jetbrains.com/hc/en-us/articles/360005137400-Cmd-Shift-A-hotkey-opens-Terminal-with-apropos-search-instead-of-the-Find-Action-dialog
  - Find `Search man Page index in Terminal` in Shortcuts, Keyboard, System Setting

## Finder

- 隠しファイル表示は `command + shift + .`
- enable `show path bar`

## Dock

Delayをなくす
```bash
$ defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0 && killall Dock
```
