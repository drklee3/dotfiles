# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/drk/.oh-my-zsh"

export PATH=/usr/local/bin:$PATH

# FIXME Where you keep your Celo stuff
export CELO_ROOT=$HOME/celo

# FIXME Your github handle
export HANDLE=drklee3

# Run SSH Agent. Use ssh-add to add and remember keys for the session.
# celo-monorepo will need you to do this with your github key when updating geth dependencies.
eval `ssh-agent`

export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_NDK=/usr/local/share/android-ndk

export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$PATH

# Set go path, and add /bin directories under it to the path
export GOPATH=$HOME/go
export PATH=$PATH:${GOPATH//://bin:}/bin

export GETH_BUILD_PATH=$CELO_ROOT/geth/build/bin/

# Default editor for debugging react 
export REACT_EDITOR=code

# Default editor
export EDITOR=vim

export GRADLE_OPTS='-Dorg.gradle.daemon=true -Dorg.gradle.parallel=true -Dorg.gradle.jvmargs="-Xmx4096m -XX:+HeapDumpOnOutOfMemoryError"'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

alias celotooljs="$CELO_ROOT/celo-monorepo/packages/celotool/bin/celotooljs.sh"

export PATH="$HOME/.cargo/bin:$PATH"

ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# Binds
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
setopt HIST_FIND_NO_DUPS # no adjacent dupes

# Pure theme
autoload -U promptinit; promptinit
prompt pure
export PURE_PROMPT_SYMBOL="→"

