"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'gi1242/vim-tex-autoclose'
Plugin 'easymotion/vim-easymotion'
Plugin 'drmingdrmer/xptemplate'
Plugin 'tomtom/quickfixsigns_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'
" Plugin 'Raimondi/delimitMate'
" Plugin 'cohama/lexima.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
" themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme badwolf
" set background=light
set guifont=Source\ code\ Pro\ for\ Powerline\ 12
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => autoclose
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au FileType tex let b:delimitMate_quotes = "\" ' $"
" let delimitMate_expand_cr = 1
" call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': ['latex', 'tex']})
" call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': ['latex', 'tex']})
" call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': ['latex', 'tex']})
" let g:lexima_enable_space_rules=0
" call lexima#add_rule({'char': '<cr>', 'at': '\\begin\%#', 'input_after': '\\end'})

let g:xptemplate_key = '<C-Space>'
" Prevent supertab from mapping <tab> to anything.
" let g:SuperTabMappingForward = '<Plug>xpt_void'
"
" " Tell XPTemplate what to fall back to, if nothing matches.
" " Original SuperTab() yields nothing if g:SuperTabMappingForward was set to
" " something it does not know.
" let g:xptemplate_fallback = '<C-r>=XPTwrapSuperTab("n")<CR>'
"
" fun! XPTwrapSuperTab(command) "{{{
"     let v = SuperTab(a:command)
"     if v == ''
"         " Change \<Tab> to whatever you want, when neither XPTemplate or
"         " supertab needs to do anything.
"         return "\<Tab>"
"     else
"         return v
"     end
" endfunction "}}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => quickfixsigns
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimEnter * set ballooneval
" let g:quickfixsigns#vcsdiff#vcs={}
let g:quickfixsigns_classes=['qfl', 'loc', 'marks', 'longlines', 'breakpoints']
let g:quickfixsigns#marks#buffer=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
set updatetime=250
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi GitGutterAdd term=bold gui=bold cterm=bold ctermfg=green guifg=green
hi GitGutterChange term=bold gui=bold cterm=bold ctermfg=yellow guifg=yellow
hi GitGutterDelete term=bold gui=bold cterm=bold ctermfg=red guifg=red
hi GitGutterChangeDelete term=bold gui=bold cterm=bold ctermfg=red guifg=red
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => restore-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']
set rtp+=$HOME/.vim/plugins
set backup
set backupdir=~/.vim/backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Latex
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LatexBox_latexmk_options =
  \ '-pdflatex="pdflatex -synctex=1 %O %S"'

function! SyncTexForward()
    " let execstr = "silent !okular --unique /home/gregor/Dokumente/masterarbeit/header.pdf\\#src:".line(".")."%:p &"
    let execstr = "silent !/home/gregor/.vim/scripts/okular_forward_search.sh '%:p:h'  '\\#src:".line(".")."%:p' '%:p:r' &"
    exec execstr
    " let execstr = "silent !okular --unique %:p:r.pdf\\#src:".line(".")."%:p &"
    " let execstr = "silent !vim --servername latex --remote %"
    " exec execstr
    redraw!
endfunction

nmap <Leader>ff :call SyncTexForward()<cr>
autocmd VimLeave *.tex LatexmkClean

let g:LatexBox_Folding=1
let g:LatexBox_latexmk_async=1
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_quickfix=2
" let g:LatexBox_build_dir='build'
au FileType * exec("setlocal dictionary+=".$HOME."/.vim/dictionaries/".expand('<amatch>'))
au FileType * exec("setlocal dictionary+=".expand('%:p:h')."/*.".expand('%:e'))
set completeopt=menuone,longest,preview
set complete+=k
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "←",
    \ "Renamed"   : "→",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "x",
    \ "Dirty"     : "*",
    \ "Clean"     : "✓",
    \ "Unknown"   : "?"
    \ }
map <C-n> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime macros/matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_tex_checkers = ["lacheck"]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set tabline=2
set guioptions=aegimrLtT
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline_section_b= '%{airline#util#wrap(getcwd(),0)}%{airline#util#wrap(airline#extensions#hunks#get_hunks(),0)}%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conceal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set cole=2
" let g:tex_conceal= 'adgm'
" set concealcursor=
let g:tex_conceal= ''
autocmd VimEnter * set concealcursor=ivcn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

set timeout " Do time out on mappings and others
set timeoutlen=1000 " Wait {num} ms before timing out a mapping
set ttimeoutlen=0

" When you’re pressing Escape to leave insert mode in the terminal, it will by
" default take a second or another keystroke to leave insert mode completely
" and update the statusline. This fixes that. I got this from:
" https://powerline.readthedocs.org/en/latest/tipstricks.html#vim
if !has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" map ,, to Esc to quickly exit insert mode
" imap ,, <Esc>
" vmap ,, <Esc>
" cmap ,, <Esc>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" line number
set nu
set relativenumber

au WinLeave * :set norelativenumber
au WinEnter * :set relativenumber
au BufEnter * :set number
au BufEnter * :set relativenumber
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" solve mapping problem
set nocompatible
set foldmethod=manual

" Fast saving
" map s :write<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" set clipboard=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmode=longest,list,full
set wildmenu

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
" imap <Del> <BS>
set whichwrap+=<,>,h,l,[,]

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch
" au VimEnter * hi Search ctermfg=brown

" Clear highlighting on escape in normal mode
" nnoremap <esc> :noh<return><esc>
" nnoremap <esc>^[ <esc>^[

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set extra options when running in GUI mode
if has("gui_running")
    " set guioptions-=T
    " set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Konsole
" solid line
let &t_SI = "\033]50;CursorShape=1\007"
" solid block
let &t_EI = "\033]50;CursorShape=0\007"
" solid block
let &t_SR = "\033]50;CursorShape=2\007"

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set breakindent
set showbreak=..

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" Useful mappings for managing buffers
nmap gb :bnext<cr>
nmap gB :bprev<cr>
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
  catch
endtry

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='100,\"1000,:20,%,n~/.viminfo

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/gregor/.vim/undo/
set undolevels=1000
set undoreload=10000

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
        exe "menu Foo.Bar :" . a:str
        emenu Foo.Bar
        unmenu Foo
endfunction


function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
       buffer #
   else
       bnext
   endif

   if bufnr("%") == l:currentBufNum
       new
   endif

   if buflisted(l:currentBufNum)
       execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" if has("terminfo")
"     let &t_Co=16
"     let &t_AB="\<Esc>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm"
"     let &t_AF="\<Esc>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm"
" else
"     let &t_Co=16
"     let &t_Sf="\<Esc>[3%dm"
"     let &t_Sb="\<Esc>[4%dm"
" endif
