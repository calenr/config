"======== FROM VUNDLE ========
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
Plugin 'Konfekt/FastFold'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bfrg/vim-cpp-modern'
Plugin 'tomasiser/vim-code-dark'
Plugin 'unblevable/quick-scope'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'machakann/vim-highlightedyank'
Plugin 'edkolev/tmuxline.vim'
" Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'dense-analysis/ale'
Plugin 'python-mode/python-mode'
" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'taketwo/vim-ros " For if you are editing ros



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


" ========= Vim Code Dark =========
silent! colorscheme codedark

" ========== Custom Settings =======
set nocompatible  "Kill vi-compatibility
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding

"Indent 4 spaces
set tabstop=4  "4 space tabs
set shiftwidth=4  "4 space shift
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces

autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

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
set noshowmode " Remove '-- INSERT --' from command line

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
syntax on
filetype plugin on
filetype indent on

set number " Show linenumbers
set showcmd "shows <leader> in the bottom right corner of vim ("\" by default)

set foldcolumn=2 " Show to columns for folding
" Set fold column to have color as the line
highlight! link FoldColumn LineNr
" Set the fold line to have the same color as the line
highlight! link Folded LineNr

set cursorline " Highlight cursor line
set cursorcolumn " Highlight cursor column


set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

" Make line numbers show in netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

set backup " Back up files

" Create backup directory
if empty(glob('~/.vim/backup'))
    silent !mkdir -p ~/.vim/backup
endif

set backupdir=~/.vim/backup/

set undofile " Undo changes to files after saving them

" Create undo directory
if empty(glob('~/.vim/undo'))
    silent !mkdir -p ~/.vim/undo
endif

set undodir=~/.vim/undo/ " Set a directory to save undo data with full path

" Create tmp directory
if empty(glob('~/.vim/tmp'))
    silent !mkdir -p ~/.vim/tmp
endif

set directory=~/.vim/tmp/ " Set a directory for temporary (swp) files

set autoread " Automatically update a file if another application wrote to it

set wildmenu " Improve command line tab completion

" ============ KEY MAPPINGS ===============
" Remap space to jk
inoremap jk <Esc>
inoremap <esc> <nop>

" Remap <Leader> to ' '
let mapleader=" "

" Remap local leader to '\'
let maplocalleader="\\"

" Source .vimrc
map <Leader>sv :source $MYVIMRC<CR>

" turn off search highlight
nnoremap <Leader><space> :nohl<CR>

" Working with tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>te :tabedit<CR>
nnoremap <leader>tq :tabclose<CR>

" scroll through commands history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Insert a new line without going into insert mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Move between split windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Resize split window with arrow keys
nnoremap <c-up> <c-w>-
nnoremap <c-down> <c-w>+
nnoremap <c-left> <c-w><
nnoremap <c-right> <c-w>>

" Cycle through git gutter hunks with wrapping
nnoremap ]h :call GitGutterNextHunkCycle()<CR>
nnoremap [h :call GitGutterPrevHunkCycle()<CR>

" Toggle relative line number
nnoremap <F6> :set relativenumber!<CR>
inoremap <F6> <esc>:set relativenumber!<CR>i

" Paste mode
nnoremap <F7> :set paste<CR>
nnoremap <F8> :set nopaste<CR>

" Show Whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
nnoremap <F9> :set list!<CR>

" Vim script settings
" ========== Auto save and load sessions =====
" see https://stackoverflow.com/questions/1642611/how-to-save-and-restore-multiple-different-sessions-in-vim
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

" Adding automatons for when entering or leaving Vim
if(argc() == 0)
  au VimEnter * nested :call LoadSession()
endif
au VimLeave * :call MakeSession()

" ============ Long Line Highlighting ===========
" highlight OverLength ctermbg=black guibg=#FFD9D9
" match OverLength /\%>79v.\+/
" set textwidth=80
" highlight ColorColumn ctermbg=black
" set colorcolumn=80 " Show colored column at column 80
"0------10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120--------130------140
"2345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
"
" see https://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
" see https://stackoverflow.com/questions/395114/vim-syntax-coloring-how-do-i-highlight-long-lines-only


highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#292929

fun! LongLineHighlightInit()
    if !exists("w:llh")
        call LongLineHighlightOn()
    endif
endfunction

fun! LongLineHighlightOn()
    let w:llh = matchadd("OverLength", '\%<101v.\%>100v')
endfunction

fun! LongLineHighlightOff()
    call matchdelete(w:llh)
    let w:llh = 0
endfunction

fun! LongLineHighlightToggle()
    if !exists("w:llh") || w:llh == 0
        call LongLineHighlightOn()
    else
        call LongLineHighlightOff()
    endif
endfunction

augroup LongLineHighlight
    autocmd BufWinEnter * call LongLineHighlightInit()
augroup end

nnoremap <Leader>lh :call LongLineHighlightToggle()<CR>

" Turn on curosrline/column only in current active window
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
        "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bdi :call DeleteInactiveBufs()

" Plugin settings

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

" let g:pymode_rope = 1
" let g:pymode_rope_regenerate_on_write = 1
" let g:pymode_rope_complete_on_dot = 1
" set completeopt=menuone,noinsert
" =========== GitGutter ==========
set updatetime=100 " Update more frequently
let g:gitgutter_sign_allow_clobber = 0
" Removes annoying highligting from the SignColumn
highlight! link SignColumn LineNr

function! GitGutterNextHunkCycle()
  let line = line('.')
  silent! GitGutterNextHunk
  if line('.') == line
    1
    GitGutterNextHunk
  endif
endfunction

function! GitGutterPrevHunkCycle()
  let line = line('.')
  silent! GitGutterPrevHunk
  if line('.') == line
    999999999
    GitGutterPrevHunk
  endif
endfunction

" =========== Rainbow ============
let g:rainbow_active = 1

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

" =========== Airline ==============
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1 " Sometimes powerline font doesn't render.
let g:airline#extensions#tabline#enabled = 1
" let g:airline_symbols_ascii = 1

" =========== Tmuxline ============
" let g:tmuxline_powerline_separators = 0
" See https://man7.org/linux/man-pages/man3/strftime.3.html
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#(uptime -p)',
      \'win'  : '#I #W',
      \'cwin' : '#I #W #F',
      \'x'    : '%Y Week %W',
      \'y'    : ['%a %b %d', '%T %Z'],
      \'z'    : '#(whoami)@#H'}

" ============ ALE ===============
let g:airline#extensions#ale#enabled=1 " Enable ale in the airline status bar

" ============= VIM ROS ===========
" Setup semantic triggers for C++
let g:ycm_semantic_triggers = {
\   'roslaunch' : ['="', '$(', '/'],
\   'rosmsg,rossrv,rosaction' : ['re!^', '/'],
\ }
