" This is a file designed by LeO for his own easynes
" You can edit this as per your own taste
" ----------------------------------------------------------
" --------------------------------------- Source all the Stuffs
source ~/nvimPlugins/general/settings.vim
source ~/nvimPlugins/keys/mappings.vim
source ~/nvimPlugins/languages/Laravel.vim
source ~/nvimPlugins/pluginsSpecific/Airline.vim
source ~/nvimPlugins/pluginsSpecific/Coc.vim
source ~/nvimPlugins/pluginsSpecific/CtrlP.vim
source ~/nvimPlugins/pluginsSpecific/Powerline.vim

set nocompatible    " be iMproved, required

"------------ NPM specific
nmap <leader>ni :!npm install 

" remove the lag created by the autocmd while saving the .vimrc file
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %			" Auto source .vimrc file everytime it is saved.
augroup end

"----------------------------------------------------Vim Plug
call plug#begin('~/.vim/plugged')

"---------------List of all the plugins---------------"
Plug 'yggdroot/indentline' "Show indent lines (useful for loops)
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'voldikss/vim-floaterm'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'shawncplus/phpcomplete.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'rking/ag.vim'
Plug 'python-mode/python-mode'
Plug 'preservim/nerdtree'
Plug 'nvie/vim-flake8' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab' "<Tab> for code completion
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/neocomplete.vim'
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis...
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'takac/vim-hardtime'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()
filetype plugin indent on    " required

let g:minimap_highlight='Visual'

" Syntastic Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=50
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

hi pythonSelf  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold


" ------------ Vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" ------------------ Float term Configuration
" Configuration example
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_hide   = '<F10>'
let g:floaterm_keymap_toggle = '<F12>'

" ------------------ Python specific
nmap <leader>ps :FloatermNew wintype='normal' position='right' width=0.5 python<cr> 

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>p  <Plug>(coc-format-selected)

"-------------------- Nerd Tree highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" Find and Replace
nmap <C-F>r :%s/
" ------------------ Nerd Tree Specific
let g:NERDTreeWinSize=30
"------File Browsing----"
" Press , followed by f for Easy file browing
let NERDTreeHijackNetrw = 0  " NerdTree Hijack Venigar Default, so turn it off
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '^node_modules$']
nmap <LEADER>f :NERDTreeToggle<cr>
" --------------------Fuzzy File
nmap ff :Files<cr>
"---------------------------------------- Fun stuffs
imap <C-A> <Esc>ggVG
imap <C-S> <Esc>:w<cr>i
nmap <C-A> ggVG
nmap <C-S> :w<cr>
vmap <C-A> ggVG
vmap <C-S> <Esc>:w<cr>
vmap <leader>s :sort<cr>
" ------------------------ Coc command explorer
:nmap <space>e :CocCommand explorer<CR>
nmap <leader>todonew :CocCommand todolist.create
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
