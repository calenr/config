" ========= FROM VUNDLE ========
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'airblade/vim-gitgutter'
" Plugin 'itchyny/lightline.vim' " Use airline instead
" Plugin 'preservim/nerdtree' " Use netrw instead
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'tomasiser/vim-code-dark'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'unblevable/quick-scope'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ycm-core/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ========= FROM VUNDLE ========

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
" set colorcolumn=80 " Show colored column at column 80
set showcmd "shows <leader> in the bottom right corner of vim ("\" by default)
" colorscheme calen_colors " Use my custom colorscheme

set foldcolumn=2 " Show to columns for folding
" Set fold column to have color as the line
highlight! link FoldColumn LineNr
" Set the fold line to have the same color as the line
highlight! link Folded LineNr


" Highlight everything past row 80 red
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>79v.\+/

" ======== Pymode =================
" Install python-mode from here
" https://github.com/python-mode/python-mode

let g:pymode = 1 " Enable python-mode
let g:pymode_warnings = 1 " Enable warnings
let g:pymode_paths = []
" let g:pymode_trim_whitespace = 1 " Trim unused white spaces on save
let g:pymode_options = 1 " sets the default python options
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_options_colorcolumn = 0

let g:pymode_rope = 1
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_rope_complete_on_dot = 1
set completeopt=menuone,noinsert
" =========== GitGutter ==========
set updatetime=100 " Update more frequently
let g:gitgutter_sign_allow_clobber = 0
" Removes annoying highligting from the SignColumn
highlight! link SignColumn LineNr

" =========== Rainbow ============
let g:rainbow_active = 1

" =========== Light Line ==========
set laststatus=2 " Shows the lightline line
set noshowmode " remive the "---insert---" text fromt he status line

" =========== Nerd Tree ===========
" Open nerd tree with CTRL-o
" map <C-o> :NERDTreeToggle<CR>
" let NERDTreeHijackNetrw=1 " Open nerd tree in window instead of project drawer

" ========= Vim Code Dark =========
colorscheme codedark

" ========== Quick Scope ==========
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" =========== Buffer line ==========
" scrolling with fixed current buffer position
  let g:bufferline_rotate = 1
  let g:bufferline_modified = '+'
  let g:bufferline_fixed_index =  0 "always first
" Put buffer in status line
  let g:bufferline_echo = 0
"  autocmd VimEnter *
"    \ let &statusline='%{bufferline#refresh_status()}'
"      \ .bufferline#get_status_string()

" ========== Paper Color ===========
" I dont use this, but I have it here for when I switch to light theme
" set background=light
" set background=dark
" colorscheme PaperColor

" =========== Airline ==============
let g:airline_theme='powerlineish'
" let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1

" =========== Tmuxline ============
let g:tmuxline_powerline_separators = 0

