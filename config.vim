set nocompatible               " be iMproved
filetype off                   " required!


" ########## BUNDLES ##################
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required! 
Plugin 'gmarik/Vundle.vim'

" include all of the bundle configuration.
if !exists('g:light_editor')
	source $HOME/.vim/bundles.vim
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"  -- Config

" Configure YouCompleteMe.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview

" Configure Ultisnips.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" TagBar
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/bin/jsctags'
	\ }

" -- Loading



let g:airline_powerline_fonts = 1

" ########## MISC #####################

set hlsearch

if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    colorscheme summerfruit256
	set background=light
else
    colorscheme desert
	set background=dark
endif

" highlight current line
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey90

" Show wrap line after 101 characters
set colorcolumn=101
hi ColorColumn guibg=grey9

set autoindent
" set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap

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

" NERDTree
map <silent> <leader>n :NERDTreeToggle<CR>

" Window resizing mappings
map <up> <C-W>-
map <down> <C-W>+
map <left> <c-w><
map <right> <c-w>>

" Command-T
nnoremap <silent> <Leader>, :CommandT<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" ########## MISC #####################
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set incsearch

" "########## The Silver Searcher #####################
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" nnoremap \ :Ag<SPACE>

command FormatJSON :%!python -mjson.tool

" let g:ctrlp_extensions = ['funky']

" nnoremap <Leader>fu :CtrlPFunky<Cr>
" " narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
