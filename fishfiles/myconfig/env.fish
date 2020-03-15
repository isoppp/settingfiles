# Mac
set -x PATH $PATH ~/Library/Android/sdk/platform-tools
set -x PATH $PATH ~/Library/Android/sdk/tools
set -x PATH $PATH ~/Library/Android/sdk/tools/bin
set -x PATH $PATH ~/oss/flutter/bin
set -x ANDROID_HOME ~/Library/Android/sdk
set -x PATH $PATH ~/Library/Application Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/192.6186006/Android Studio.app/Contents/jre/jdk/Contents/Home/bin
set -x JAVA_HOME ~/Library/Application Support/JetBrains/Toolbox/apps/AndroidStudio/ch-0/192.6186006/Android Studio.app/Contents/jre/jdk/Contents/Home

# Linux
# set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
# set -Ux GOPATH $HOME/go
# set -gx PATH $PATH ~/bin # tig
# set -gx PATH $PATH ~/go/bin # ghq
# set -gx PATH $PATH ~/.fzf/bin # fzf

# Linux and Mac
status --is-interactive; and source (anyenv init -| psub)
