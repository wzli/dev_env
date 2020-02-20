syntax on
set hlsearch
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
autocmd BufWritePre *.py :%s/\s\+$//e
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
