set nocompatible               " be iMproved
filetype off                   " required!


" ########## BUNDLES ##################

"  -- Config

" Configure YouCompleteMe.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview

" Configure Ultisnips.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets"]

" -- Loading

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" include all of the bundle configuration.
if !exists('g:light_editor')
	source $HOME/.vim/bundles.vim
endif

" ########## MISC #####################

set hlsearch

colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif

set autoindent
set shiftwidth=4
set tabstop=4

" ########## MAPPINGS #################

" change the mapleader from \ to ,
let mapleader=","

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" save with strg-s
map <c-s> <esc>:w<cr>
imap <c-s> <esc>:w<cr>a

set nowrap

" NERDTree
map <silent> <leader>n :NERDTreeToggle<CR>

" Window resizing mappings
map <up> <C-W>-
map <down> <C-W>+
map <left> <c-w><
map <right> <c-w>>

" Command-T
nnoremap <silent> <Leader>, :CommandT<CR>

" ########## MISC #####################
filetype plugin indent on

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
