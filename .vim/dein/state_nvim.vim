if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/takafusa/.config/nvim/init.vim', '/Users/takafusa/.config/nvim/dein.toml', '/Users/takafusa/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/takafusa/dotfiles/.vim/dein'
let g:dein#_runtime_path = '/Users/takafusa/dotfiles/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/takafusa/dotfiles/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/takafusa/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim/,/Users/takafusa/.config/nvim,/etc/xdg/nvim,/Users/takafusa/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/takafusa/dotfiles/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/takafusa/dotfiles/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.8/share/nvim/runtime,/Users/takafusa/dotfiles/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/takafusa/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/takafusa/.config/nvim/after'
filetype off
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neosnippet.vim'])
