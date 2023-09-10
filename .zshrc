# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# User configuration
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# Setting this variable when ZSH_THEME=random will cause zsh to load
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# zstyle ':oxz:update' frequency 13

# or set a custom format using the strftime function format specifications,

# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
if [ -f "home/user/.zshrc" ]; then
  source "$HOME/.zshrc."
fi
# see 'man strftime' for details.

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
source $ZSH/oh-my-zsh.sh

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8
if [ -f "$HOME/.system/.system" ]; then
  source "$HOME/.system/.system"
fi

autoload -Uz vcs_info
# export ARCHFLAGS="-arch x86_64"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.


# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
autoload -U colors && colors

# already provides some commonly used aliases.
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
precmd() { vcs_info }
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':oxz:update' mode disabled  
# zstyle ':oxz:update' mode auto      # update automatically without asking
# zstyle ':oxz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# Set personal aliases, overriding those provided by oh-my-zsh libs,
zstyle ':vcs_info:git:*' formats '%b' \n


# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# disable automatic updates
setopt prompt_subst

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# users are encouraged to define SSH_CONNECTION within the folder.
PROMPT='%F{green}╭─%F{magenta}%n %F{yellow}| %F{blue}$(pwd) %F{yellow}| %F{green}branch%F{cyan} >>%F{red}${vcs_info_msg_0_}%F{cyan}<< %F{yellow}|
%F{green}╰─%F{yellow}$ '
# Preferred editor for local and remote sessions

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
if [ -f "home/user/.profile" ]; then
  source "$HOME/.profile/global"
fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# For a full list of active aliases, run `alias`.

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

# Caution: this setting can cause issues with multiline prompts in zsh (see #5765)
# COMPLETION_WAITING_DOTS="true"

