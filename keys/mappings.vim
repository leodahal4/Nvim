nmap <C-N> :nohlsearch<cr>			

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-z> <esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" " TAB in general mode will move to text buffer
" nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" For copying outsite of Vim window
vnoremap <leader>y "+y

" ,rc to edit the .vimrc file on the next tab
nmap <LEADER>rc :tabedit ~/.config/nvim/init.vim<cr>	

nmap <leader>mc zz

" Note last tab cannot be closed
" Close the working tab or file 
nmap <C-c> :tabc<cr> 
" Map for ctrl and keys for split changing
nmap <C-LEFT> <C-W><C-H>
nmap <C-RIGHT> <C-W><C-L>
nmap <C-DOWN> <C-W><C-J>
nmap <C-UP> <C-W><C-K>
" Tag bar toggle
nmap <leader>tb :TagbarToggle<CR>

set noerrorbells visualbell t_vb = 
nmap <silent> gd <Plug>(coc-definition)
