let mapleader = ","

" Turn off arrows
noremap <silent> <Left> <NOP>
noremap <silent> <Down> <NOP>
noremap <silent> <Up> <NOP>
noremap <silent> <Right> <NOP>

" Open ctrlp search
map <Leader>p :CtrlP<CR>

" Open file browser
map <Leader>e :NERDTreeToggle<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

map <Leader>q :q<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

""" NORMAL MODE

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""" VISUAL MODE

" Keep selection when moving code blocks
vnoremap < <gv
vnoremap > >gv

