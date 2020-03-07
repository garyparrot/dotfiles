" powerline symbols

if ! exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_left_sep = ' '
" let g:airline_right_sep = ' '
" let g:airline_left_alt_sep = ' '
" let g:airline_right_alt_sep = ' '
" let g:airline_left_sep =      ''
" let g:airline_right_sep =     ''
let g:airline_left_alt_sep =  ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" let g:airline_theme='behelit'
" let g:airline_theme='RedDope'

let g:airline#extensions#coc#enabled = 1
" let airline#extensions#coc#error_symbol = 'Error:'
" let airline#extensions#coc#warning_symbol = 'Warning:'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
