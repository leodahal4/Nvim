let python_highlight_all=1
" My NeoVim configuration
" ----------------------------------------------------------
" --------------------------------------- Source all the Stuffs
source ~/nvimPlugins/Plugins.vim
source ~/nvimPlugins/general/settings.vim
source ~/nvimPlugins/keys/mappings.vim
source ~/nvimPlugins/languages/Laravel.vim
source ~/nvimPlugins/languages/Python.vim
source ~/nvimPlugins/pluginsSpecific/Airline.vim
source ~/nvimPlugins/pluginsSpecific/Coc.vim
source ~/nvimPlugins/pluginsSpecific/CtrlP.vim
source ~/nvimPlugins/pluginsSpecific/Powerline.vim
source ~/nvimPlugins/pluginsSpecific/Vim_PHP_namespace.vim
source ~/nvimPlugins/pluginsSpecific/Floaterm.vim
source ~/nvimPlugins/pluginsSpecific/NerdTree.vim
source ~/nvimPlugins/pluginsSpecific/Vim_HardTime.vim


set nocompatible    " be iMproved, required


"------------ NPM specific
nmap <leader>ni :!npm install 

" remove the lag created by the autocmd while saving the .vimrc file
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %			" Auto source .vimrc file everytime it is saved.
augroup end

filetype plugin indent on    " required
let g:minimap_highlight='Visual'
hi pythonSelf  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>p  <Plug>(coc-format-selected)
" Find and Replace
nmap <C-F>r :%s/
" ------------------ Nerd Tree Specific
"------File Browsing----"
" Press , followed by f for Easy file browing
" --------------------Fuzzy File
nmap ff :Files<cr>

"---------------------------------------- Fun stuffs
vmap <leader>s :sort<cr>
" ------------------------ Coc command explorer
:nmap <space>e :CocCommand explorer<CR>
nmap <leader>todo :CocCommand todolist.create
nmap <leader>list :CocList todolist<cr>
" ------- lint auto fix by coc
nmap <leader>af :CocCommand eslint.executeAutofix<cr>
" ------------- Custom functions
so ~/.vim/custom/customFunctions.vim
nmap <F5> :call ChangeBackground()<cr>
"------ new one
set undodir=~/.vim/undodir
set undofile
set colorcolumn=80
nmap <C-N> :nohlsearch<cr>			
let g:indentLine_setColors = 0
let g:vim_be_good_floating = 0

let g:vue_pre_processors = []
let g:pymode_lint_on_write = 0
let g:pymode_folding = 1

" let g:clap_theme = 'atom-dark-256'
" let g:clap_theme = { 'search_text': {'guifg': 'blue', 'ctermfg': 'blue'} }
