call plug#begin('~/.vim/plugged')

    Plug 'Valloric/YouCompleteMe'

call plug#end()

runtime! debian.vim

if has("syntax")
  syntax on
endif

if &term =~ '^screen'
     execute "set <xUp>=\e[1;*A"
     execute "set <xDown>=\e[1;*B"
     execute "set <xRight>=\e[1;*C"
     execute "set <xLeft>=\e[1;*D"
endif

set tabstop=4
set shiftwidth=4
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set number
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set clipboard=unnamedplus
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
