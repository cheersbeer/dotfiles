export EDITOR=vim

# export LANG=ja_JP.UTF-8
export LANG=en_US.UTF-8
export KCODE=u

autoload -Uz colors
colors

bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

PROMPT="%{${fgyellow}%}[%n@%m:%C]$ %{${reset_color}%}"

autoload -Uz select-word-style
select-word-style default

zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                    /usr/sbin /usr/bin /sbin /bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
  pscar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

RPROMPT="%1(v|%F{green}%1v%f|)"

setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt magic_equal_subst
setopt share_history
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt EXTENDED_HISTORY
setopt auto_menu
setopt extended_glob
setopt nonomatch

bindkey '^R' history-incremental-pattern-search-backward

alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias sudo='sudo '
alias -g L='| less'
alias -g G='| grep'
alias vim='nvim'

if which xsel >/dev/null 2>&1 ; then
 alias -g C='| xsel --input --clipboard'
fi

# for powerline
export PATH=~/.local/bin:$PATH
powerline-daemon -q
. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH"
# export PATH="/home/takafusa/.linuxbrew/bin:$PATH"

# export PATH="/home/takafusa/anaconda2/bin:$PATH"
# export PATH="/home/takafusa/.linuxbrew/opt/python/libexec/bin:$PATH"
# export PATH="/home/takafusa/anaconda/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
# export PATH="/anaconda2/bin:$PATH"

# export PYTHONPATH="/Library/Python/2.7/site-packages:$PYTHONPATH"

# for nodebrew
NODEBREW_HOME=/usr/local/var/nodebrew/current
export NODEBREW_HOME
export NODEBREW_ROOT=/usr/local/var/nodebrew

export PATH=$PATH:$NODEBREW_HOME/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH="$PATH:/anaconda3/bin"

# pyenv init
eval "$(pyenv init -)"

# ターミナル起動した際にtmuxを起動
if [[ ! -n $TMUX ]]; then
  tmux new-session
fi
