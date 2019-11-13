syntax on
set hlsearch
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
autocmd BufWritePre *.py :%s/\s\+$//e
