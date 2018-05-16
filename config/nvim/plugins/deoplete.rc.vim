let g:deoplete#enable_at_startup = 1

"" <TAB>: completion.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ deoplete#mappings#manual_complete()
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"
"" <CR>: close popup
"" 候補がある場合は候補を閉じる 候補を選択していれば確定 候補がない場合は改行
""inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
""function! s:my_cr_function() abort
""  if pumvisible()
""    return deoplete#close_popup()
""  else
""    return "\<CR>"
""  endif
""endfunction
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function() abort
"  return deoplete#close_popup() . "\<CR>"
"endfunction
"
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" <CR>: close popup
inoremap <expr><CR> pumvisible() ? deoplete#close_popup() : "\<CR>"

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" <BS>: close popup and delete backword char.
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"

" Use auto delimiter
call deoplete#custom#source('_', 'converters', [
      \ 'converter_remove_paren',
      \ 'converter_remove_overlap',
      \ 'converter_truncate_abbr',
      \ 'converter_truncate_menu',
      \ 'converter_auto_delimiter',
      \ ])

let g:deoplete#auto_complete_delay = 20
let g:deoplete#auto_complete_start_length = 2
let g:deoplete#enable_camel_case = 0
"let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1

let g:deoplete#delimiters = ['/', '.', '::', ':', '#', '->', '\']

call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy'])
