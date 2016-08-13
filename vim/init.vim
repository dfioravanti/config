
set encoding=utf8
scriptencoding utf-8

filetype on
syntax on
set colorcolumn=90
set relativenumber
set background=dark 

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>

set showmatch
set hlsearch

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab
set smartindent
set autoindent

set laststatus=2

let mapleader = " "

map <leader>s :source ~/.vim/vimrc<CR>

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

call plug#begin('~/.vim/plugged')

	Plug 'https://github.com/morhetz/gruvbox'

  Plug 'https://github.com/wincent/command-t/'

  Plug 'itchyny/lightline.vim'
  
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

  Plug 'https://github.com/jiangmiao/auto-pairs'

  Plug 'https://github.com/rhysd/vim-clang-format'

  Plug 'octol/vim-cpp-enhanced-highlight'

  Plug 'https://github.com/tpope/vim-fugitive'

  Plug 'https://github.com/scrooloose/syntastic'
    
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

  Plug 'nvie/vim-flake8'

  " Track the engine.
  Plug 'SirVer/ultisnips'

  " Snippets are separated from the engine. Add this if you want them:
  Plug 'honza/vim-snippets'

call plug#end()
colorscheme gruvbox

    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<c-s>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent fileformat=unix

"let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'  

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
