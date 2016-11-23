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
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    Bundle 'scrooloose/nerdtree'
    Bundle 'tomtom/tcomment_vim'
    Bundle 'vim-airline/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    Bundle 'Yggdroot/indentLine'
    Bundle 'vim-scripts/vim-startify'
    Bundle 'tpope/vim-fugitive'
    Bundle 'blueshirts/darcula'
    filetype plugin indent on
" }

" Indentation {
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
    " set number
    " Text {
        set wrap
    " }
    " Colors {
        colorscheme darcula
    " }
    " Interface {
        set cursorline
        set laststatus=2
    " }
" }

" Plugins {
    " NERDTree {
        let NERDTreeShowHidden=1
        let NERDTreeHighlightCursorline=0
        let NERDTreeChDirMode=2
        let NERDTreeMinimalUI=1
        let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.DS_Store$']
    " }
    " Startify {
        let g:startify_bookmarks=['~/.vimrc', '/var/www/html']
    " }
    " Indent Line {
        let g:indentLine_char = '|'
    " }
    " Airline {
        function! CustomBranchFormat(name)
            return 'Git: '.a:name
        endfunction

        let g:airline_theme='bubblegum'
        let g:airline#extensions#tabline#enabled=1
        let g:airline#extensions#branch#format='CustomBranchFormat'
        let g:airline_left_sep=''
        let g:airline_right_sep=''
        let g:airline_section_y='Buf: %n'
    " }
" }

" Custom {
    map <C-X> :bd<CR>
    map <C-T> :sh<CR>

    map <F2> :NERDTreeToggle<CR>
    nnoremap <F3> :NERDTreeFind<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    noremap <C-K> :m .+1<CR>==
    nnoremap <C-J> :m .-2<CR>==
    inoremap <C-K> <Esc>:m .+1<CR>==gi
    inoremap <C-J> <Esc>:m .-2<CR>==gi
    vnoremap <C-K> :m '>+1<CR>gv=gv
    vnoremap <C-J> :m '<-2<CR>gv=gv

    set pastetoggle=<F10>
" }
