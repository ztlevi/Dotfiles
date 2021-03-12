set smartcase

" Enable global clipboard
set clipboard+=unnamedplus

" Disable swapfile and backup
set nobackup
set noswapfile

" set relativenumber
set number
set hidden
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */

" Search
set incsearch
set hls

" Code
syntax enable

" black hole register
vmap <backspace> "_d
vmap <del> "_d

" Allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l

" ============================================================================
" emacs keymaping for cursor movement
" You have to unbind C-g before it works
" ============================================================================
nmap <c-g> <Esc>
vmap <c-g> <Esc>
imap <c-g> <Esc>a
cnoremap <C-g> <Esc>
nmap <c-a> ^
nmap <c-e> $
vmap <c-a> ^
vmap <c-e> $
imap <c-e> <Esc>A
imap <c-a> <Esc>I
imap <c-d> <del>
imap <c-k> <Esc><right>Da
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-p> <up>
inoremap <c-n> <down>
" command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>