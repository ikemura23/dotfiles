# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

fpath=(~/.functions ${fpath})

# Java
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
PATH=$PATH:$JAVA_HOME/bin
PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/tools/bin

eval "$(nodenv init -)"

# ------ git -------
alias gs='git status -u -b -s'
alias gd='git diff --stat'
alias gb='git branch'
alias gco='git checkout'
alias gg='git graph'
alias ggg='git graph-simple'
alias go='~/dev/mac-setting/git-checkout-direct.sh'
alias de='git checkout -B develop origin/develop'
alias ma='git checkout -B master origin/master'
alias main='git checkout -B main origin/main'
alias sea='git checkout -B develop_sea origin/develop_sea'

# ------ adb -------
alias acrun='adb shell dumpsys activity | grep -B 1 "Run #[0-9]*:"'
alias actop="adb shell dumpsys activity top"
alias ipt="adb shell input text"
alias ipp="ipt;adb shell input keyevent 66;ipzp"
alias ss='~/dev/mac-setting/screenshot.sh 700'
alias sss='~/dev/mac-setting/screenshot.sh 500'
alias ssss='~/dev/mac-setting/screenshot.sh 300'
alias rec='adb shell screenrecord /sdcard/output.mp4 --size 540x960'
alias recgif='~/dev/mac-setting/screenrecordConvertor.sh'
alias inst='adb install'
alias instr='adb install -r'
alias cap='~/dev/mac-setting/capture.sh'

# ----------yt-dlp
alias ytm='yt-dlp -x --audio-format mp3'

alias ll='exa -l'
alias la='exa -la'
alias cat='bat -p'
alias sz='source ~/.zshrc'

alias act='act --container-architecture linux/amd64'
