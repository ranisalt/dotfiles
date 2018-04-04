" airline
let g:airline_inactive_collapse=0
let g:airline_powerline_fonts=1
" let g:aitline_theme='badwolf'
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=1

" deoplete
let g:deoplete#enable_at_startup=1
" let g:deoplete#sources#clang#clang_header='/usr/lib/clang'
" let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
" let g:deoplete#sources#go#gocode_binary=$GOPATH.'/bin/gocode'

" editorconfig
let g:EditorConfig_exclude_patterns=['fugitive://.*']

" indent-guides
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1

" jsx
" let g:jsx_ext_required=0

" neomake
let g:neomake_cpp_enabled_makers=['clang']
let g:neomake_javascript_enabled_makers=['standard']

" netrw (file browser)
let g:netrw_banner=0        " disable annoying banner
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" python-mode
let g:pymode_python='python3'
