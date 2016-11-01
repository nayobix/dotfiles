" Early setttings 
syntax on
set nocompatible
let mapleader = ","

" Searching
set hlsearch
set incsearch

set colorcolumn=80

" Tabs and indentation
set tabstop=4 "set tab to 4 spaces
"set expandtab
"set autoindent
"set shiftwidth=4 " number of spaces to use for autoindenting
"set copyindent
set smartindent
"set smarttab
" 
"
" UI 
set bg=dark
set exrc
set backspace=indent,eol,start
set number
set showmatch
set smartcase
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set virtualedit=all             " allow the cursor to go in to "invalid" places
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep
set showcmd                     " show (partial) command in the last line of the screen
                                "    this also shows visual selection info 
" Pathogen and Vundle
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on       " enable detection, plugins and indenting in one step
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
								"    paste mode, where you can paste mass data
								"    that won't be autoindented
set mouse=a                     " enable using the mouse if terminal emulator
set fileformats="unix,dos,mac"
set shortmess+=I                " hide the launch screen
set clipboard=unnamed           " normal OS clipboard interaction

" Toggle show/hide invisible chars
nnoremap <leader>i :set list!<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
nnoremap ; :

" 

" Folding rules 
set nofoldenable                  " enable folding

" Mappings to easily toggle fold levels
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>
nnoremap z2 :set foldlevel=2<cr>
nnoremap z3 :set foldlevel=3<cr>
nnoremap z4 :set foldlevel=4<cr>
nnoremap z5 :set foldlevel=5<cr>
" 

" Editor layout 
"set termencoding=utf-8
"set encoding=utf-8
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even
                                "    if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high
" 

" Vim behaviour 
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set noswapfile

set nomodeline                  " disable mode lines (security measure)
"set ttyfast                     " always use a fast terminal
set cursorline                  " underline the current line, for quick orientation

" 

" Trinity configs 
" Open and close all the three plugins on the same time 
nmap <F5> :TrinityToggleAll<CR>
" " Open and close the srcexpl.vim separately 
nmap <F6> :TrinityToggleSourceExplorer<CR>
" " Open and close the taglist.vim separately 
nmap <F7> :TrinityToggleTagList<CR>
" " Open and close the NERD_tree.vim separately 
nmap <F8> :TrinityToggleNERDTree<CR>

" Cscope configs
" make cscope mapping to work Ctrl+\+G and so on
nnoremap <leader>C :setlocal cscoperelative!<cr>

" Mouse configs - in modes `a` and `m`
nnoremap <leader>M :setlocal mouse=c<cr>
nnoremap <leader>A :setlocal mouse=a<cr>

"Source Explorer configs
let g:SrcExpl_winHeight = 8 
let g:SrcExpl_refreshTime = 100 
let g:SrcExpl_jumpKey = "<ENTER>" 
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_pluginList = [
    \ "__Tag_List__",
    \ "_NERD_tree_"
    \ ] 
let g:SrcExpl_prevDefKey = "<F3>"
let g:SrcExpl_nextDefKey = "<F4>" 

" Vundle Plugins
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/Trinity'
Plugin 'vim-scripts/SrcExpl'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth.git'
"Plugin 'artur-shaik/vim-javacomplete2'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
