" php preferences

" php tags
" php dictionary - http://lerdorf.com/funclist.txt
set dictionary=~/.vim/dic/php

"navigate manual (deleted)
"set keywordprg=~/.vim/bin/php_doc 

"php syntax highlite
set makeprg=php\ -l\ %

"errors format
set errorformat=%m\ in\ %f\ on\ line\ %l

" quick templates
" debug output
iabbrev dbg echo '<pre>';var_dump( );echo '</pre>';
iabbrev tm echo 'Test message in file: '.__FILE__.', on line: '.__LINE__;

let g:pdv_cfg_Uses = 1

" php blocks folding 
"let php_folding = 1

"no short tags for searchg
let php_noShortTags = 1

"highlite html inside php
let php_htmlInStrings=1 

"php functions highlite
let php_baselib = 1

" codesniffer

function! RunPhpcs()
    let l:filename=@%
    let l:phpcs_output=system('phpcs --report=csv --standard=Zend '.l:filename)
        "    echo l:phpcs_output
    let l:phpcs_list=split(l:phpcs_output, "\n")
    unlet l:phpcs_list[0]
    cexpr l:phpcs_list
    cwindow
endfunction

set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
command! Phpcs execute RunPhpcs()

" php documentor
" TODO

