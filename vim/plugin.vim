
" Tabularize
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" supertab

"let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
"let g:haskellmode_completion_ghc = 1
"autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'


augroup my_cm_setup
    autocmd!
    autocmd User CmSetup call cm#register_source({
          \ 'name' : 'vimtex',
          \ 'priority': 8,
          \ 'scoping': 1,
          \ 'scopes': ['tex'],
          \ 'abbreviation': 'tex',
          \ 'cm_refresh_patterns': g:vimtex#re#ncm,
          \ 'cm_refresh': {'omnifunc': 'vimtex#complete#omnifunc'},
          \ })
augroup END

" vimtex

let g:vimtex_view_method = 'mupdf'
let g:vimtex_compiler_progname = 'nvr'
map \lt :VimtexTocToggle<cr>
let g:tex_flavor='latex'
let g:vimtex_format_enabled = 1

" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
