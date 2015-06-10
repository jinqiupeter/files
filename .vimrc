colorscheme aqua
set nocompatible
set t_ti= t_te=
set nu
set ruler
set incsearch
set hlsearch
set autoindent
set cindent
nmap zz ZZ

map <F6> :call EnhancedCommentify('','guess')<CR>
map <F7> :call EnhancedCommentify('','comment')<CR>
map <F8> :call EnhancedCommentify('','decomment')<CR>

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

" see ~/.vim/cscope_maps.vim
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls

" Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
" makes the vim window split horizontally, with search result displayed in
" the new window.
" Hitting CTRL-space *twice* before the search type does a vertical 
" split instead of a horizontal one (vim 6 and up only)
"
" (Note: you may wish to put a 'set splitright' in your .vimrc
" if you prefer the new window on the right instead of the left
