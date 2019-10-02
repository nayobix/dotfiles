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
" Vundle
" First step !!! -> git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
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
"nmap <F6> :TrinityToggleSourceExplorer<CR>
" " Open and close the taglist.vim separately 
"nmap <F7> :TrinityToggleTagList<CR>
" " Open and close the NERD_tree.vim separately 
"nmap <F8> :TrinityToggleNERDTree<CR>
"nmap <F8> :TagbarToggle<CR>

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
    \ "_NERD_tree_",
    \ "Source_Explorer"
    \ ] 
" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F9>" 
let g:SrcExpl_prevDefKey = "<F3>"
let g:SrcExpl_nextDefKey = "<F4>" 

"YCM configs
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0

"Snippets config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

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
Plugin 'vim-scripts/taglist.vim' " Should `apt-get install ctags` also
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'Raimondi/delimitMate'
" Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
