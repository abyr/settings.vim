" Edited by abyr

"colors
colorscheme wombat

syntax on

"numbers
set nu

"mouse support
set mouse=a
set mousemodel=popup

" show cursor
set ruler 

"show not ended commands in statusbar
set showcmd 

"folding by indents
"set foldmethod=indent

"search by text
set incsearch
"no highlite
"set nohlsearch

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

"tab to spaces
set expandtab

"tab sizes
set shiftwidth=4
set softtabstop=4
set tabstop=4

"smart indents
set smartindent

"status line format
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2

" Fix <Enter> for comment
set fo+=cr

" hot keys

"Space list pages in Norm
nmap <Space> <PageDown>

" CTRL-F for omni completion
imap <C-F> <C-X><C-O>

" del line ^+e
nmap <C-e> dd
imap <C-e> <esc>ddi

" copy line ^+d
imap <C-d> <esc>yypi

" quick save
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - show erros
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F4 - File browser
nmap <F4> :NERDTree<cr>
imap <F4> <esc>:NERDTree<cr>

" buffers

" F5 - show buffers
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - prev buff
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i
"
" F7 - next buff
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - bookmarks
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 charset
set termencoding=utf-8
set wildmenu
set wcm=<Tab>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.koi8-u :e ++enc=koi8-u ++ff=unix<CR>
map <F9> :emenu Encoding.<TAB>

" F10 exit
menu Exit.quit :quit<CR>
menu Exit.quit! :quit!<CR>
menu Exit.save :exit<CR>
menu Exit.bdelete :bdelete<CR>
menu Exit.bdelete! :bdelete!<CR>
map <F10> :emenu Exit.<Tab>

" F11 - Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" browse files 
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" replase - insert switch
imap >Ins> <Esc>i

" quit
nmap <C-Q> <ESC>:qa<cr>


" addons, tools, plugins

" autocomplite

function InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

" Source of complitions
set complete=""
" from current buff
set complete+=.
" from dictionary
set complete+=k
" from other buffs
set complete+=b
" from tags 
set complete+=t

" Enable filetype plugin. Different preferences in different files
filetype plugin on
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php

" SessionMgr preferences
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

" Tlist preferences (show only current file in navigateion window)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

