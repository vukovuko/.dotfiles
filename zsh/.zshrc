# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export SRC_ACCESS_TOKEN=sgp_a0d7ccb4f752ea73_bc65d678ac7f26e98fa917dcf998252ba751aa16
export SRC_ENDPOINT=https://sourcegraph.com

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

source ~/.oh-my-zsh/oh-my-zsh.sh

# Source F-Sy-H
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/F-Sy-H/F-Sy-H.plugin.zsh

# Source zsh-autosuggestions
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Source zsh-autocomplete
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Key bindings for zsh-autosuggestions
bindkey '^ ' autosuggest-accept  # Ctrl + Space to accept suggestion
bindkey '^U' autosuggest-clear   # Ctrl + U to clear suggestion

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker F-Sy-H zsh-autosuggestions zsh-autocomplete)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias desktop="cd /mnt/c/Users/Vuko/Desktop"
alias privatno="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Privatno/"
alias ucenje="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Privatno/Ucenje"
alias nvimconfig="cd /home/vuko/.config/nvim/lua/vuko"
alias programiranje="cd /mnt/c/Users/Vuko/Desktop/Programiranje"
alias leetcode="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Privatno/Ucenje/Algoritmi/C++/Leetcode/"
alias cpcrs="cd /home/vuko/Vuko/Programiranje/Losic/cityprocar.rs"
alias downloads="cd /mnt/c/Users/Vuko/Downloads"
alias ucenjecpp="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Privatno/Ucenje/Algoritmi/C++"
alias slaki="cd /home/vuko/Vuko/Programiranje/Slaki/"
alias ll="ls -al"
alias ezal="eza -l --icons --git -a"
alias psa="ps aux"
alias cls="clear;ls"
alias ras="ssh slavisablesic@192.168.225.110"
alias fs="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Poslovno/ForwardSlash/"
alias ps="cd /mnt/c/Users/Vuko/Desktop/Programiranje/Poslovno/ForwardSlash/fc0036-2/"

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/.local/scripts/"
export PATH="$PATH:$HOME/tmux"
export PATH="$PATH:$HOME/Vuko/Programiranje/builds/tree-sitter"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/Vuko/Programiranje/builds/lua-language-server/bin/"
export PATH="$PATH:$HOME/.local/bin/clangd_18.1.3/bin/"

# LS_COLORS is used by GNU ls. LSCOLORS is used by BSD ls.
export LS_COLORS='fi=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:'
LS_COLORS+='pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32'
export LSCOLORS='ExGxDxDxCxDxDxFxFxexEx'

# TREE_COLORS is used by GNU tree. It looks awful with underlined text, so we turn it off.
export TREE_COLORS=${LS_COLORS//04;}

# Use GNU ls colors in completion lists.
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
