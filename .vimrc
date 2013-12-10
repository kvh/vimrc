set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'ervandew/supertab'
Bundle 'klen/python-mode'


set foldmethod=indent
set foldlevel=99

let mapleader = ","

map <leader>td <Plug>TaskList

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" filetype maps
au BufNewFile,BufRead *.jinja set filetype=html

"let g:pyflakes_use_quickfix = 0
"let g:pep8_map='<leader>8'

" supertab and completion settings
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" shortcut for colon
nmap ; :

nmap <leader>d :TagbarToggle<CR>
nmap <leader>a <Esc>:Ack!


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_rename_bind = '<leader>r'
let g:pymode_rope_autoimport_bind = '<leader>i'

" Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


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
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent              " always set autoindenting on
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
au FileType html,htmldjango,less,scss,css setl sw=2 sts=2 ts=2


" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" switch buffers
nnoremap <c-t> :b#<CR>

nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

colorscheme molokai
set guifont=Inconsolata\ 14
