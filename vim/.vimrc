" allows us to use Vim settings
set nocompatible
set encoding=utf-8

" Changes for Vundle to work properly
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Settings to make vim look good
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bcicen/vim-vice'

" Settings for a programmers text editor
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'

" Working with Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Nice editing stuffs
Plugin 'Raimondi/delimitMate'

" man pages, tmux
Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'

" Syntax plugins
Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()

filetype plugin indent on

"-Plugin specific settings-

" colorscheme settings

set background=dark

" Comment next line if terminal supports solarized
" let g:solarized_termcolor=256

" Set colorscheme
colorscheme vice

" bling/vim-airline settings
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
" https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click 'Install'
" Finally, uncomment the next line
" let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enables = 1

" Use solarized theme for Airline status bar
let g:airline_theme='vice'

" jistr/vim-nerdtree.tabs settings
" Open/close NERDTree tabs with \t
let g:NERDTreeDirArrows=0
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" scrooloose/syntastic settings
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = "^"
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" xolox/vim-easytags settings
" Where to look for tags files
set tags=./tags;,~/.vimtags

" Defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" majutsushi/tagbar settings
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" Rainmondi/delimitMate settings
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    au FileType tex let b:delimitMate_quotes = ""
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"',"'"]
augroup END

" jez/vim-superman settings
noremap K :SuperMan <cword><CR>


" General settings

set history=1000	" changes how many cmds are stored
set number		    " use line numbers
set ruler		    " always show cursor pos
set showcmd		    " display incomplete cmds
set incsearch 		" do incremental searching
set hlsearch	    " highlights searches	
set linebreak		" wrap lines on 'word' boundaries
set scrolloff=3		" don't let cursor touch edge of terminal
set splitright		" splits vertically right
set timeoutlen=100	" Lower ^[ timeout
set fillchars=fold:\ ,	" get rid of obnoxious '-' characters in folds
set tildeop		    " use ~ to toggle case as an operator, not a motion
syntax on           " enables syntax highlighting
set mouse=a         " allows use of mouse
if exists('&breakindent')
    set breakindent	" indent wrapped lines to same level
endif
set tw=80           " sets the text width to 80
highlight OverLength ctermbg=black ctermfg=magenta
match OverLength /\%81v.\+/
set fo+=t
set colorcolumn=+0  " shows a column at tw chars
set foldnestmax=1   " only fold one level deep

" Tab settings
set expandtab		" expands tabs into spaces
set tabstop=4		" defaults to 4 spaces for a hard tab
set softtabstop=4	" default to 4 spaces for a soft tab
set shiftwidth=4	" for when <TAB> is pressed at the beginning of a line
set autoindent      " autoindenting in vim
set smartindent

" Command settings
command! -bang WQ wq<bang>
command! -bang Wq wq<bang>

" Keybindings

" Makes navigating long lines easier
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> gk k
noremap <silent> gj j
noremap <silent> 0 g0
noremap <silent> g0 0
noremap <silent> $ g$
noremap <silent> g$ $
noremap <silent> ^ g^
noremap <silent> g^ ^
noremap <silent> _ g_



