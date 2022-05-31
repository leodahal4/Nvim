let python_highlight_all=1
" My NeoVim configuration
" ----------------------------------------------------------
" --------------------------------------- Source all the Stuffs
source ~/Nvim/Plugins.vim
source ~/Nvim/general/settings.vim
source ~/Nvim/keys/mappings.vim
source ~/Nvim/languages/Laravel.vim
source ~/Nvim/languages/Python.vim
source ~/Nvim/pluginsSpecific/Airline.vim
source ~/Nvim/pluginsSpecific/Coc.vim
source ~/Nvim/pluginsSpecific/CtrlP.vim
source ~/Nvim/pluginsSpecific/Powerline.vim
source ~/Nvim/pluginsSpecific/Vim_PHP_namespace.vim
source ~/Nvim/pluginsSpecific/Floaterm.vim
source ~/Nvim/pluginsSpecific/NerdTree.vim
source ~/Nvim/pluginsSpecific/Vim_HardTime.vim


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
nnoremap <C-S><C-S> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wqa!<CR>
