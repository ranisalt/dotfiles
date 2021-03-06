set autochdir
set background=dark
set clipboard=unnamedplus
set fileencoding=utf8
set noshowmode " airline already shows me
set path+=**
set ttimeoutlen=0

" highlight and navigation
set colorcolumn=80
set cursorline
set mouse=a
set number
set relativenumber

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

" execute neomake on open/write
" au BufReadPost,BufWritePost * Neomake
" au BufWritePost *.tex :silent !rubber --unsafe --pdf %

" Return to last edit position when opening files (You want this!)
au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

au BufReadPost * IndentGuidesEnable

" au FileType python nnoremap <Leader>= :0,$!yapf<CR>

" augroup filetypedetect
"   au BufRead,BufNewFile *.ex set filetype=elixir
"   au BufRead,BufNewFile *.exs set filetype=elixir
" augroup END

colors badwolf
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=black
hi NonText ctermbg=NONE guibg=NONE
hi Normal ctermbg=NONE guibg=NONE

" vim:set ft=vim et sw=2:
