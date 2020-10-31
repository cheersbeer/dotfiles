set -U EDITOR vim

set -g theme_color_scheme solarized
## set -g theme_date_format "+%H:%M"
set -g theme_display_date no
set -g theme_display_docker_machine yes
set -g theme_display_git_master_branch yes
set -g theme_display_hostname yes
set -g theme_display_user yes
set -g theme_display_virtualenv yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt '⋊> '
set -g theme_title_display_user yes

# PROMPT "%{$fgyellow%}[%n@%m:%C]$%{$reset_color%}"
# RPROMPT "%1(v|%F{green}%1v%f|)"

# alias la 'ls -a'
# alias ll 'ls -l'
alias rm 'rm -i'
alias cp 'cp -i'
alias mv 'mv -i'
alias mkdir 'mkdir -p'
alias sudo 'sudo '
alias vim 'nvim'
alias ls 'lsd'
alias cat 'bat'
alias find 'fd'

if which xsel >/dev/null 2>&1
    alias C '| xsel --input --clipboard'
end

# for brew 
# alias brew "PATH /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

set -xg LC_ALL en_US.UTF-8 
set -xg LANG en_US.UTF-8 
set -xg KCODE u

# for powerline
# set -x PATH "/Users/takafusa/.local/bin:$PATH"
# powerline-daemon -q
#   . /Users/takafusa/.local/lib/python3.7/site-packages/powerline/bindings/fish/powerline-setup.fish

# for icu4c
set -x PATH "/usr/local/opt/icu4c/bin:$PATH"
set -x PATH "/usr/local/opt/icu4c/sbin:$PATH"

# for flutter
set -x PATH "$PATH:/Users/takafusa/working/flutter/bin"
set -x PATH "$PATH:/Users/takafusa/dotfiles/flutter/bin"

# for rvm
# set -x PATH "/usr/local/opt/libxml2/bin:$PATH"
# set -x PATH "/usr/local/opt/libxslt/bin:$PATH"
# set -x PATH "/usr/local/opt/libpq/bin:$PATH"
# set -x PATH "$HOME/.rvm/bin:$HOME/.rvm/scripts/rvm:$PATH"
# source ~/.rvm/scripts/rvm 
# set -x PATH "/Users/takafusa/.rvm/gems/ruby-1.8.7-head/bin:$PATH"

# for pyenv
set -x PYENV_ROOT /usr/local/var/pyenv
set -x PATH "$PYENV_ROOT/bin:$PATH"
source (pyenv init - | psub)

# for rbenv
# status --is-interactive; and . (rbenv init -|psub)
# fix_path

# for peco
function fish_user_key_bindings
  bind \cr peco_select_history
end

# for starship
starship init fish | source

# for emscripten
# source ~/working/build_opencv/emsdk/emsdk_env.fish

# ターミナル起動した際にtmuxを起動
if [ (echo $TMUX) = "" ]
    tmux
end
