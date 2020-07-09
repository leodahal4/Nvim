" To overview all the functions present on the file
nmap <C-F> :CtrlPBufTag<cr>

let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:15,results:30'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
