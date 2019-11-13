set autochdir
set background=dark
set backupcopy=yes
set clipboard=unnamedplus
set fileencoding=utf8
set hidden
set lazyredraw
set noshowmode " airline already shows me
set path+=**
set title
set ttimeoutlen=0
set updatetime=400

" highlight and navigation
set colorcolumn=80
set cursorline
set number
set relativenumber
set termguicolors

" indent and syntax
set expandtab
set foldmethod=syntax
set foldlevel=8
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4

" search
set ignorecase
set magic
set showmatch
set smartcase

runtime plugins.vim
runtime plugins-setup.vim
runtime keymaps.vim

" remove trailing whitespace on save
au BufWritePre * :%s/\s\+$//e

augroup filetypedetect
  au BufRead,BufNewFile *.ex set filetype=elixir
  au BufRead,BufNewFile *.exs set filetype=elixir
  au BufRead,BufNewFile *.mjs set filetype=javascript
  au BufRead,BufNewFile *.ts set filetype=typescript
augroup END

colors gruvbox
au BufReadPost * IndentGuidesEnable
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=black
hi NonText ctermbg=NONE guibg=NONE
hi Normal ctermbg=NONE guibg=NONE

if has('persistent_undo')
  let undodir = '~/.config/nvim/undodir'
  call system('mkdir ' . undodir)
  set undofile
endif

" vim:set ft=vim et sw=2:
