" ensure vim-plug is installed and autoloaded
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  au VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" DEFAULTS
Plug 'tpope/vim-sensible'

" EXTENSIONS
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular', { 'on': 'Tab' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'

" Tim Pope
Plug 'tpope/vim-commentary'  " gc to toggle comments, gcc linewise
Plug 'tpope/vim-repeat'  " make vim-commentary and vim-surround work with .
Plug 'tpope/vim-surround'  " ysiw to add delimiters, cs to change, S visual

""" LANGUAGE SPECIFICS
" Plug 'zchee/deoplete-clang', { 'for': 'cpp' }
" Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
" Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }

Plug 'ryanoasis/vim-devicons'

" COLORSCHEMES
Plug 'morhetz/gruvbox'
call plug#end()
