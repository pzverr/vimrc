.vimrc
======
Installation
------------
```sh
wget https://raw.githubusercontent.com/pzverr/vimrc/master/.vimrc
```
Install plugins
---------------
To install vim plugins, follow:<br/> 
`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle`<br/>

```vim 
:BundleInstall
```

Tricks
------
* CTRL + L - toggle NERDTree hotkey
* CTRL + J - prev buffer
* CTRL + K - next buffer
* CTRL + T - open terminal ( CTRL + D return to vim )
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
