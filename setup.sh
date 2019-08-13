#!/usr/local/bin/zsh

DOT_FILES=(.zshrc .zshenv .vimrc .vim .gitignore .gitconfig .bash_profile .zprofile .tmux.conf .config/powerline)

 for file in ${DOT_FILES[@]}
 do
 if [ -f "$HOME/$file" ]; then
  unlink $HOME/$file
 fi
 ln -s $HOME/dotfiles/$file $HOME/$file
 done

# for fish
if [ -f "$HOME/.config/fish" ]; then
  unlink $HOME/.config/fish
fi
ln -s $HOME/dotfiles/fish $HOME/.config/fish
