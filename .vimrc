set nocompatible

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

map <leader>td <Plug>TaskList

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

" supertab and completion settings
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

let mapleader = ","

nmap ; :

" Ropevim 
map <leader>j <C-c>g
map <leader>r :RopeRename<CR>
map <leader>i :call RopeAutoImport()<CR>

nmap <leader>a <Esc>:Ack!

colorscheme mustang2
set guifont=Inconsolata\ 14

" shell should source .bash_profile
set shell=bash\ --login

imap <C-j> <Esc>
nnoremap <tab> %
vnoremap <tab> %

au FocusLost * :wa
set nobackup
set nowritebackup
set noswapfile

set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set number
set hidden

" search settings
nnoremap / /\v
vnoremap / /\v
set gdefault
set hlsearch                    " highlight matches
set incsearch 
set ignorecase
set smartcase
" clear search with ,/
nmap <silent> ,/ :nohlsearch<CR>


" filetype-specific tab adjustments
au FileType html setl sw=2 sts=2 et


" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

