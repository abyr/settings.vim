"
" abyr
" @see http://habrahabr.ru/post/65518/
"

set nu

set syntax=on

colorscheme wombat

set softtabstop=4
set tabstop=4
set shiftwidth=4
set smarttab

set smartindent

set et
set wrap

set ai
set cin

set ruler 

set showmatch 
set hlsearch
set incsearch
set ignorecase

set lz

set listchars=tab:··
set list

set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

set showcmd

"mouse
set mouse=a
set mousemodel=popup
"if !has('gui_running')
"    set mouse=
"endif

set guioptions-=T 
set guioptions-=m 

"font
if has('gui')
    colorscheme darkblue 
    if has('win32')
        set guifont=Lucida_Console:h12:cRUSSIAN::
    else
        set guifont=Terminus\ 14
    endif
endif

"status line format
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
set laststatus=2

" Fix <Enter> for comment
set fo+=cr

"window
if has('gui')
    if has('win32')
        au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
    elseif has('gui_gtk2')  
        au GUIEnter * :set lines=99999 columns=99999
    endif
endif

"make C
if has('win32')
    set makeprg=nmake
    compiler msvc
else
    set makeprg=make
    compiler gcc
endif

"
" hotkeys
"

" CTRL-F for omni completion
imap <C-F> <C-X><C-O>

" del line ^+e
nmap <C-e> dd
imap <C-e> <esc>ddi

" copy line ^+d
nmap <C-d> yypi
imap <C-d> <esc>yypi

" quick save
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - File browser
nmap <F3> :NERDTreeToggle<cr>
imap <F3> <esc>:NERDTreeToggle<cr>

" F4 - Taglist
map <F4> :TlistToggle<cr>
vmap <F4> <esc>:TlistToggle<cr>
imap <F4> <esc>:TlistToggle<cr>


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

" F10 exit
menu Exit.quit :quit<CR>
menu Exit.quit! :quit!<CR>
menu Exit.save :exit<CR>
menu Exit.bdelete :bdelete<CR>
menu Exit.bdelete! :bdelete!<CR>
map <F10> :emenu Exit.<tab>

