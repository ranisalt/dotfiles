" airline
let g:airline_inactive_collapse=0
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#tab_nr_type=1

" ale
let g:ale_completion_enabled = 1
" let g:ale_fixers = {
"             \ 'javascript': ['standard'],
"             \}


" editorconfig
let g:EditorConfig_exclude_patterns=['fugitive://.*']

" gruvbox
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1

" indent-guides
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1

" jsx
" let g:jsx_ext_required=0

" latex-suite

" neomake
let g:neomake_cpp_enabled_makers=['clang']
let g:neomake_javascript_enabled_makers=['standard']
let g:neomake_typescript_enabled_makers=['tsc']

" netrw (file browser)

" python mode
let g:pymode_python = 'python3'
