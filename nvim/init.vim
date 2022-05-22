source $HOME/.config/nvim/vim-plug/plugins.vim

if (has('termguicolors'))
    set termguicolors
endif
    syntax enable

colorscheme dracula

set encoding=UTF-8

set tabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow
set number

let g:move_key_modifier = 'C'
let g:move_key_modifier = 'S'

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>
