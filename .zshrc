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

# for brew 
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

# for powerline
export PATH="/Users/takafusa/.local/bin:$PATH"
powerline-daemon -q
  . /Users/takafusa/.local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
  #/Users/takafusa/.local/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh

# for icu4c
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# for flutter
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:/Users/takafusa/dotfiles/flutter/bin"

# for rvm
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/libxslt/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$HOME/.rvm/scripts/rvm:$PATH"
source ~/.rvm/scripts/rvm 
export PATH="/Users/takafusa/.rvm/gems/ruby-1.8.7-head/bin:$PATH"

# for pyenv
export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# memo
# /Users/takafusa/.rvm/gems/ruby-1.8.7-head/bin:/Users/takafusa/.rvm/gems/ruby-1.8.7-head/bin:/Users/takafusa/.rvm/gems/ruby-1.8.7-head@global/bin:/Users/takafusa/.rvm/rubies/ruby-1.8.7-head/bin:/Users/takafusa/.rvm/bin:/Users/takafusa/.rvm/scripts/rvm:/usr/local/opt/libpq/bin:/usr/local/opt/libxslt/bin:/usr/local/opt/libxml2/bin:/usr/local/var/pyenv/shims:/usr/local/var/pyenv/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/icu4c/bin:/Users/takafusa/.pyenv/bin:/Users/takafusa/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/var/pyenv/shims:/usr/local/var/pyenv/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/icu4c/bin:/Users/takafusa/.pyenv/bin:/Users/takafusa/.local/bin:/Users/takafusa/.rvm/gems/ruby-1.8.7-head/bin:/Users/takafusa/.rvm/gems/ruby-1.8.7-head@global/bin:/Users/takafusa/.rvm/rubies/ruby-1.8.7-head/bin:/Users/takafusa/.rvm/bin:/Users/takafusa/.rvm/scripts/rvm:/usr/local/opt/libpq/bin:/usr/local/opt/libxslt/bin:/usr/local/opt/libxml2/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/games:/usr/local/games:/Users/takafusa/.pyenv/shims:/Users/takafusa/bin:/anaconda3/bin:/Users/takafusa/.pyenv/versions/anaconda3-5.3.0/bin://flutter/bin:/Users/takafusa/dotfiles/flutter/bin:/anaconda3/bin:/Users/takafusa/.pyenv/versions/anaconda3-5.3.0/bin:/Users/takafusa/dotfiles/flutter/bin:/Users/takafusa/dotfiles/flutter/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# ターミナル起動した際にtmuxを起動
if [[ ! -n $TMUX ]]; then
  tmux new-session
fi
