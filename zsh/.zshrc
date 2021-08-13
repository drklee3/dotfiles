# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/drk/.oh-my-zsh"
export PATH=/usr/local/bin:$PATH

# Celo stuff
export CELO_ROOT=$HOME/celo
export VM_BASED=false

# GitHub
export HANDLE=drklee3
# https://stackoverflow.com/questions/41052538/git-error-gpg-failed-to-sign-data
export GPG_TTY=$(tty)

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

# Load nvm faster
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -f __init_nvm)" = function ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
	declare -a __node_commands=(nvm `find -L $NVM_DIR/versions/*/*/bin -type f -exec basename {} \; | sort -u`)
	function __init_nvm() {
		for i in "${__node_commands[@]}"; do unalias $i; done
		. "$NVM_DIR"/nvm.sh
		unset __node_commands
		unset -f __init_nvm
	}
	for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Oh my Zsh
ZSH_THEME=""
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting history-substring-search)
plugins=(git history-substring-search ssh-agent rust)
source $ZSH/oh-my-zsh.sh

# Binds
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
setopt HIST_FIND_NO_DUPS # no adjacent dupes

# Pure theme
# fpath+=("$HOME/.zsh/pure")
# autoload -U promptinit; promptinit
# prompt pure
# export PURE_PROMPT_SYMBOL="→"

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
alias fh='feh --scale-down --auto-zoom --auto-rotate' # feh: Fit images and auto rotate
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

# fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files'

eval "$(starship init zsh)"

