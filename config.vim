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

" TagBar
let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/bin/jsctags'
	\ }

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

let g:airline_powerline_fonts = 1

" ########## MISC #####################

set hlsearch

" colorscheme solarized
colorscheme desert
"if has('gui_running')
"	set background=light
"else
"	set background=dark
"endif

" set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

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

" TagBar
nmap <F8> :TagbarToggle<CR>

" ########## MISC #####################
filetype plugin indent on

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set incsearch

" ########## The Silver Searcher #####################
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

nnoremap \ :Ag<SPACE>
