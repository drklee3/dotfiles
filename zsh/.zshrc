# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/drk/.oh-my-zsh"
export PATH=/usr/local/bin:$PATH

# Celo stuff
export CELO_ROOT=$HOME/celo
export VM_BASED=false
# GitHub
export HANDLE=drklee3

# Run SSH Agent. Use ssh-add to add and remember keys for the session.
# celo-monorepo will need you to do this with your github key when updating geth dependencies.
{eval "$(ssh-agent)"} &> /dev/null

export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
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

# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Add every binary that requires nvm, npm or node to run to an array of node globals
# NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
# NODE_GLOBALS+=("node")
# NODE_GLOBALS+=("nvm")

# Lazy-loading nvm + npm on node globals call
# load_nvm () {
#   export NVM_DIR=~/.nvm
#   [ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
# }

# Making node global trigger the lazy loading
# for cmd in "${NODE_GLOBALS[@]}"; do
#   eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
# done

# export NODE_OPTIONS="--max-old-space-size=4096"

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting history-substring-search)

source $ZSH/oh-my-zsh.sh

# Binds
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
setopt HIST_FIND_NO_DUPS # no adjacent dupes

# Pure theme
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure
export PURE_PROMPT_SYMBOL="→"

# Aliases
alias icat="kitty +kitten icat"
alias celotooljs="$CELO_ROOT/celo-monorepo/packages/celotool/bin/celotooljs.sh"
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias rm='rm -v'
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type'                          # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

# fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files'
