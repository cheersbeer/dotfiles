if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/takafusa/.vimrc', '/Users/takafusa/.config/nvim/dein.toml', '/Users/takafusa/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/takafusa/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/takafusa/dotfiles/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/takafusa/dotfiles/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/takafusa/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim/,/Users/takafusa/.vim,/usr/share/vim/vimfiles,/Users/takafusa/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/takafusa/dotfiles/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/Users/takafusa/dotfiles/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/takafusa/.vim/after'
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neosnippet.vim'])
