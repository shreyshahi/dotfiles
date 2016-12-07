" Configure plugins using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/indentpython'
Plug 'jakezhaojb/vim-torch-snipmate'
Plug 'lua.vim'
call plug#end()


" Configure solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" Tabs and spaces
set tabstop=4
set softtabstop=4
set expandtab

" UI
set number
set showmatch
