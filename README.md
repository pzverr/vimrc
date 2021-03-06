.vimrc
======
Installation
------------
```sh
wget https://raw.githubusercontent.com/pzverr/vimrc/master/.vimrc
```

Configuration in project's .exrc file
-
```vimscript
" scp on save
let g:enable_scp  = 1
let g:scp_server  = "example.com"
let g:scp_port    = 22
let g:scp_user    = "user"
let g:scp_local   = "/local/project/folder/"
let g:scp_remote  = "/remote/project/folder/"
```

Tricks
------
* F2 - toggle NERDTree hotkey
* F3 - find current file in NERDTree
* CTRL + j - down currentline
* CTRL + k - up currentline
* CTRL + x - close buffer
* CTRL + p - prev buffer
* CTRL + n - next buffer
* CTRL + t - open terminal ( CTRL + D return to vim )
* zo - open fold block
* zc - close fold block
* zR - open all fold blocks
* zM - close all fold blocks
* i - insert mode
* di( - delete the text inside the brackets
* da( - delete the text with brackets
* gg - top the file
* gG - end of file
* dw - delete word
* cw - remove the word with the subsequent transition to insert mode
* y - copy
* p - paste
* x - cut
* gcc - comment out the line
* gc - comment out the line up/down j/k
* v - visual mode
* shift-v - select a line
* shift-> - tab
* shift-< - untab
