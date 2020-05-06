set nocompatible              " be iMproved, required

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {'left': [[ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified']]},
      \ 'component_function': {'gitbranch': 'gitbranch#name'},
      \ }

set t_Co=256
set t_ut=
colorscheme vim-code-dark

set noshowmode
set number " показывать номера строк в редакторе
set colorcolumn=120 " вертикальная линия после 120 символов
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина таба при использовании всесто него пробелов
autocmd vimenter * NERDTree " Открывать дерево каталогов при запуске VIM

set completeopt+=noselect

call plug#begin('~/.vim/plugged')        " All of your Plugins must be added after this line
Plug 'Shougo/deoplete.nvim'              " asynchronous completion framework
Plug 'roxma/nvim-yarp'                   " and a requrements
Plug 'roxma/vim-hug-neovim-rpc'          " and another one
Plug 'tomasiser/vim-code-dark'           " a dark color scheme
Plug 'itchyny/lightline.vim'             " a light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/vim-gitbranch'             " provides a function which returns the name of the git branch
Plug 'scrooloose/nerdtree'               " file tree
Plug 'Shougo/neco-vim'
Plug 'Shougo/deoplete-clangx'            " for C/C++/Objective-C/Objective-C++
Plug 'pearofducks/ansible-vim'           " for Ansible
Plug 'deoplete-plugins/deoplete-jedi'    " for Python
" Plug 'racer-rust/vim-racer'            " for Rust, uncomment this line, when racer switch to rust stable instead of nightly
call plug#end()                          " All of your Plugins must be added before this line 

" deoplete auotcompletion autoenable
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
let g:ansible_unindent_after_newline = 1
let g:ansible_name_highlight = 'b'
let g:asmsyntax = 'nasm'

" Put your non-Plugin stuff after this line
