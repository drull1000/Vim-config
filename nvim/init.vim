let mapleader=" "
let g:tablineclosebutton = 1
let g:airline#extensions#tabline#enabled = 1

set number                  " add line numbers
set spell                   " spell checking
set mouse=v                 " middle-click paste with 
set mouse=a                 " enable mouse click
set hlsearch                " highlight search 
set smartcase               " automatically switch search to case-sensitive when search query contains an uppercase
set showmatch               " show matching 
set tabstop=4               " number of columns occupied by a tab 
set expandtab               " converts tabs to white space
set incsearch               " incremental search
set incsearch               " incremental search that shows partial matches.
set splitright              " open new split panes to right
set splitbelow              " and below
set ignorecase              " case insensitive 
set cursorline              " highlight current cursorline
set noswapfile              " disable creating swap file
set autoindent              " indent a new line the same amount as the line just typed
set nocompatible            " disable compatibility to old-time vi
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set relativenumber          " relative line numbers
set spelllang=en,pt,fr      " spell check
set spellsuggest=best,9     " show nine spell candidates
set wildmode=longest,list   " get bash-like tab completions
set clipboard=unnamedplus   " using system clipboard

filetype plugin on
filetype plugin indent on   " allow auto-indenting depending on file type

" color schemes
if (has("termguicolors"))
set termguicolors
endif

syntax on                   " syntax highlighting
syntax enable
autocmd vimenter * ++nested colorscheme spaceduck 

nnoremap <SPACE> <Nop>

" open CHADthree
nnoremap <leader>e <cmd>CHADopen<cr>

" open Telescope
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fw <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" save file with CTRL + S
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L 

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" remap lightspeed's s to z
nmap <expr> z reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_s" : "s"
nmap <expr> Z reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_S" : "S"

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

call plug#begin('~/.vim/plugged')
 " Plugin Section
 Plug 'sharkdp/fd'
 Plug 'fatih/vim-go' " 
 Plug 'mattn/emmet-vim'
 Plug 'othree/html5.vim'
 Plug 'mkitt/tabline.vim'
 Plug 'zchee/deoplete-go'
 Plug 'github/copilot.vim'
 Plug 'rust-lang/rust.vim'
 Plug 'BurntSushi/ripgrep'
 Plug 'alvan/vim-closetag'
 Plug 'yggdroot/indentline'
 Plug 'jiangmiao/auto-pairs'
 Plug 'sheerun/vim-polyglot'
 Plug 'bling/vim-bufferline'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'neovim/nvim-lspconfig'
 Plug 'ryanoasis/vim-devicons'
 Plug 'vim-airline/vim-airline'
 Plug 'preservim/nerdcommenter'
 Plug 'ggandor/lightspeed.nvim'
 Plug 'norcalli/nvim-colorizer.lua'
 Plug 'rust-analyzer/rust-analyzer'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'enricobacis/vim-airline-clock'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
 Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

call plug#end()