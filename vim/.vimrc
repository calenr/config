set nocompatible  "Kill vi-compatibility
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding

"Indent 4 spaces
set tabstop=4  "4 space tabs
set shiftwidth=4  "4 space shift
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines
set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=croq  "Enable comment line auto formatting

set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
syntax on
filetype plugin on
filetype indent on

set number " Show linenumbers
set colorcolumn=80 " Show colored column at column 80
set showcmd "shows <leader> in the bottom right corner of vim ("\" by default)
colorscheme calen_colors " Use my custom colorscheme

" Install python-mode from here
" https://github.com/python-mode/python-mode

let g:pymode = 1 " Enable python-mode
let g:pymode_warnings = 1 " Enable warnings
let g:pymode_paths = []
" let g:pymode_trim_whitespace = 1 " Trim unused white spaces on save
let g:pymode_options = 1 " sets the default python options
