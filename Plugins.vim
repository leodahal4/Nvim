call plug#begin('~/.vim/plugged')

"---------------List of all the plugins---------------"
Plug 'Raimondi/delimitMate' "automatic closing of quotes, parenthesis...
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvie/vim-flake8' 
Plug 'preservim/nerdtree'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'voldikss/vim-floaterm'
Plug 'yggdroot/indentline' "Show indent lines (useful for loops)
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


call plug#end()

" ------------- All older Plugins that were installed
"  who knows that I won't need these.
" Plug 'ayu-theme/ayu-vim'
" Plug 'metakirby5/codi.vim'
" Plug 'takac/vim-hardtime'
