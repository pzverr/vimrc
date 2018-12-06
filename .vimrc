" Basic {
    set nocompatible
    set encoding=utf8
    if !has("gui_running")
        set t_Co=256
    endif
    let mapleader=","
" }

" Productivity {
    set ttyfast
    set lazyredraw
    set autoread
    set nobackup
    set noswapfile
    set nowritebackup
" }

" BundleVundle {
    filetype off
    filetype plugin indent on
" }

" Indentation {
    set tabstop=4
    set shiftwidth=4
    set smarttab
    set expandtab
    set smartindent
" }

" Search {
    set hlsearch
    set incsearch
    set ignorecase
" }

" Folding {
"    set foldmethod=syntax
"    set foldnestmax=1
" }

" Interface, colors, text {
    set number
    syntax enable
    " Text {
        set wrap
    " }
    " Colors {
        colorscheme elflord
    " }
" }

" Custom {
    map <C-T> :sh<CR>

    map <C-_> :call Comment()<CR>

    function Comment()
        if getline(".") =~# "^\/\/"
            :s:^\/\/
        else
            :s:^:\/\/
        endif
    endfunction
" }
