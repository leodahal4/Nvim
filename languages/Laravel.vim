"------------ Laravel specific
nmap <leader>la :e routes/api.php<cr>
nmap <leader>lc :e app/Http/Controllers/<cr>
nmap <leader>le :e .env<cr>
nmap <leader>lj :e resources/js/<cr>
nmap <leader>lm :!php artisan make:
nmap <leader>lr :e routes/web.php<cr>
nmap <leader>lt :!php artisan migrate<cr>
nmap <leader>lv :e resources/views/<cr>

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
