call plug#begin('~/.vim/plugged')

" Aesthetic
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'

" Interface
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" General syntax
Plug 'sbdchd/neoformat'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"Coc
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" LaTeX
Plug 'lervag/vimtex'

"Julia
Plug 'JuliaEditorSupport/julia-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Markdown
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

"Misc
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'karadaharu/slimux'

call plug#end()
