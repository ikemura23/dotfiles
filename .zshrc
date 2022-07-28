# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

fpath=(~/.functions ${fpath})

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
alias go='~/dev/android-development-setting/git-checkout-direct.sh'
alias de='git checkout -B develop origin/develop'
alias ma='git checkout -B master origin/master'
alias main='git checkout -B main origin/main'

# ------ adb -------
alias acrun='adb shell dumpsys activity | grep -B 1 "Run #[0-9]*:"'
alias actop="adb shell dumpsys activity top"
alias ipt="adb shell input text"
alias ipp="ipt;adb shell input keyevent 66;ipzp"
alias ss='~/dev/android-development-setting/screenshot.sh 700'
alias sss='~/dev/android-development-setting/screenshot.sh 500'
alias ssss='~/dev/android-development-setting/screenshot.sh 300'
alias rec='adb shell screenrecord /sdcard/output.mp4 --size 540x960'
alias recgif='~/dev/android-development-setting/screenrecordConvertor.sh'
alias inst='adb install'
alias instr='adb install -r'
alias cap='~/dev/android-development-setting/capture.sh'
