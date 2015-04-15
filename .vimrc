
" Identify platform {
    silent function! OSX()
        return has('macunix')
    endfunction
    silent function! LINUX()
        return has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
        return (has('win16') || has('win32') || has('win64'))
    endfunction
" }


" Basic {
    set encoding=utf8
    if !has("gui_running")
        set t_Co=256
    endif
    if !WINDOWS()
        set shell=/bin/sh
    endif
    let mapleader=","
" }


" Productivity {
    set ttyfast
    set lazyredraw
    set noswapfile
    set autoread
" }


" BundleVundle {
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    Bundle 'scrooloose/nerdtree'
    Bundle 'tomtom/tcomment_vim'
    Bundle 'Yggdroot/indentLine'
    Bundle 'bling/vim-airline'
    Bundle 'vim-scripts/tchaba'
    Bundle 'vim-scripts/vim-startify'
    filetype plugin indent on
" }


" Indentation {
    set shiftround
    set tabstop=4
    set shiftwidth=4
    set smarttab
    set expandtab
    set autoindent
    set smartindent
" }


" Search {
    set hlsearch
    set incsearch
    set ignorecase
" }


" Interface, colors, text {
    syntax enable
    " Text {
        set wrap
    " }
    " Colors {
        set background=dark
        colorscheme tchaba2
    " }
    " Interface {
        set number
        set mousehide
        set wildmenu
        set title
        set showmode
        set showcmd
        set laststatus=2
        set ruler
    " }
" }


" Plugins {
    " NERDTree {
        let NERDTreeShowHidden=0
        let NERDTreeHighlightCursorline=0
    " }
    " Startify {
        let g:startify_bookmarks = ['~/.vimrc',]
    " }
    " Airline {
        let g:airline_theme='dark'
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
        let g:airline_section_y = 'BUF: %n'
    " }
    " IndentLine {
        let g:indentLine_char = '|'
        let g:indentLine_color_term = 241
    " }
" }


" Custom {
    map <C-L> :NERDTreeToggle<CR>
    map <C-K> :bnext<CR>
    map <C-J> :bprev<CR>
" }
