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
Plug 'tomtom/tcomment_vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'nvie/vim-flake8' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis...
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

Plug 'tpope/vim-fugitive'


call plug#end()

" ------------- All older Plugins that were installed
"  who knows that I won't need these.
" Plug 'takac/vim-hardtime'
" Plug 'metakirby5/codi.vim'
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
