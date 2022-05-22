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
