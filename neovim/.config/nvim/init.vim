set autochdir
set background=dark
set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set expandtab
set fileencoding=utf8
set foldmethod=manual
set foldlevel=8
set ignorecase
set magic
set noshowmode " airline already shows me
set number
set smartindent
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set tabstop=4

" ensure vim-plug is installed and autoloaded
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
" defaults
Plug 'tpope/vim-sensible'

" extensions
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'editorconfig/editorconfig-vim'
Plug 'Konfekt/FastFold'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'benekastah/neomake'
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'terryma/vim-multiple-cursors'
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

" textobj
Plug 'kana/vim-textobj-user'
Plug 'poetic/vim-textobj-javascript', { 'for': 'javascript' }
Plug 'bps/vim-textobj-python', { 'for': 'python' }

" colorschemes
Plug 'altercation/vim-colors-solarized'
call plug#end()

let mapleader = ","

nnoremap <silent> <Tab> <NOP>

" silently quit if no changes
map <silent> q :q<cr>

" open nerdtree navigation
map <C-e> :NERDTreeToggle<cr>

" open ctrlp search
map <C-p> :CtrlP<cr>

nnoremap <space> za

" tab manipulation
map <leader>t :tabnew<cr>
map <leader>o :tabedit
map <leader>w :tabclose<cr>
map <leader>a :tabprevious<cr>
map <leader>d :tabnext<cr>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" turn off arrows
noremap <silent> <Left> <NOP>
noremap <silent> <Down> <NOP>
noremap <silent> <Up> <NOP>
noremap <silent> <Right> <NOP>
inoremap <silent> <Left> <NOP>
inoremap <silent> <Down> <NOP>
inoremap <silent> <Up> <NOP>
inoremap <silent> <Right> <NOP>
vnoremap <silent> <Left> <NOP>
vnoremap <silent> <Down> <NOP>
vnoremap <silent> <Up> <NOP>
vnoremap <silent> <Right> <NOP>

cmap w!! w !sudo tee > /dev/null %

let g:neomake_javascript_xo_maker={
      \ 'args': ['--reporter=compact'],
      \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
      \ '%W%f: line %l\, col %c\, Warning - %m'
      \ }

let g:airline_inactive_collapse = 0
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=1
let g:badwolf_css_props_highlight=1
let g:badwolf_darkgutter=1
let g:badwolf_tabline=0
let g:deoplete#enable_at_startup=1
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1
let g:neomake_cpp_enabled_makers=['gcc']
let g:neomake_javascript_enabled_makers=['xo']

" remove trailing whitespace on save
au BufWritePre * :%s/\s\+$//e

" execute neomake on open/write
au BufReadPost,BufWritePost * Neomake

" Return to last edit position when opening files (You want this!)
au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

au BufReadPost * IndentGuidesEnable

colors solarized
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=black

" vim:set ft=vim et sw=2:
