
"
" UltiSnips
"
let g:UltiSnipsExpandTrigger = '<f5>'

"
" indentLine
"

" Set character to use to mark indents
let g:indentLine_char='│'

"
" fzf
"

nnoremap <C-f> :Files<CR>
nnoremap <C-b> :Buffers<CR>
"nnoremap <C-s> :Snippets<CR>
nnoremap <C-l> :Lines<CR>

"
" vim-markdown
"

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1 " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END


" Tabularize
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

"
" vimtex
"

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
