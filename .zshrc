# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#vim のpath00
export PATH=/usr/local/bin:$PATH
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git ruby osx bundler brew rails emoji-clock)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#source $HOME/.zshrc.custom

#Silent Beep Sound
setopt no_beep

#tmux copy
if [ -n "$TMUX" ]; then
  alias pbcopy="reattach-to-user-namespace pbcopy"
fi
# alias tmux = "tmux -u"

export EDITOR=/usr/local/bin/vim

#zaw.zsh Settings for move directory which was moved recently.
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':chpwd:*' recent-dirs-max 5000
zstyle ':chpwd:*' recent-dirs-default yes
zstyle ':completion:*' recent-dirs-insert both

source $HOME/.zsh/zaw/zaw.zsh
zstyle ':filter-select' case-insensitive yes # 絞り込みをcase-insensitiveに
bindkey '^[' zaw-cdr # zaw-cdrをbindkey
