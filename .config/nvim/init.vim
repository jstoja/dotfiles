syntax on
set nocompatible
filetype off
set encoding=utf-8

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
" GUI
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
" Plug 'tpope/vim-fugitive'

" Fuzzy Finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Langs
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
" Plug 'neoclide/coc-python'
" Plug 'psf/black', { 'branch': 'stable' }
" Plug 'dense-analysis/ale'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

"if exists('+termguicolors')
"  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif

filetype plugin indent on
set autoindent
set backspace=indent,eol,start
" set backup
set history=50
set showcmd
set incsearch
map Q gq
set hlsearch

" Ctrl+c as Esc
nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
snoremap <C-c> <Esc>
xnoremap <C-c> <Esc>
cnoremap <C-c> <Esc>
onoremap <C-c> <Esc>
lnoremap <C-c> <Esc>
tnoremap <C-c> <Esc>


" Permanent undo
set undodir=~/.vimdid
set undofile

" # GUI settings
" =============================================================================
set guioptions-=T " Remove toolbar
set vb t_vb= " No more beeps
set backspace=2 " Backspace over newlines
set nofoldenable
set ttyfast
" https://github.com/vim/vim/issues/1735#issuecomment-383353563
set lazyredraw
set synmaxcol=500
set laststatus=2
set relativenumber " Relative line numbers
set number " Also show current absolute line
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set showcmd " Show (partial) command in status line.
set mouse=a " Enable mouse usage (all modes) in terminals
set shortmess+=c " don't give |ins-completion-menu| messages.
