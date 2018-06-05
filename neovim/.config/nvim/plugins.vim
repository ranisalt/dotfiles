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
" Plug 'dawikur/algorithm-mnemonics.vim'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
" Plug 'benekastah/neomake'
" Plug 'chr4/nginx.vim'
Plug 'godlygeek/tabular', { 'on': 'Tab' }
" Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
" Plug 'easymotion/vim-easymotion'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'kana/vim-textobj-user'

" Tim Pope
Plug 'tpope/vim-commentary'  " gc to toggle comments, gcc linewise
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'  " make vim-commentary and vim-surround work with .
Plug 'tpope/vim-surround'  " ysiw to add delimiters, cs to change, S visual

""" LANGUAGE SPECIFICS
Plug 'zchee/deoplete-clang', { 'for': 'cpp' }

" Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }

" Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
" Plug 'nsf/gocode', { 'do': '~/.config/nvim/plugged/gocode/vim/symlink.sh', 'for': 'go', 'rtp': 'nvim' }
" Plug 'fatih/vim-go', { 'for': 'go' }

" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx', { 'for': 'javascript' }
" Plug 'moll/vim-node', { 'for': 'javascript' }
" Plug 'poetic/vim-textobj-javascript', { 'for': 'javascript' }

Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
" Plug 'bps/vim-textobj-python', { 'for': 'python' }

Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" COLORSCHEMES
Plug 'sjl/badwolf'
call plug#end()
