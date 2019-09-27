" I prefer <C-E> for switching mode
:inoremap <C-E> <esc>
:inoremap <C-e> <esc>

" Switching between NERDTree and current file
" :nnoremap <c-Tab> :silent execute ':NERDTreeFocus'<cr>
:nnoremap <space> :nohlsearch<cr><space>

:let mapleader='-'
:nnoremap <Leader>nt :e ~/.note.md<cr>
:nnoremap <Leader>ev :vsp ~/.config/nvim/init.vim<cr>
:nnoremap <Leader>sv :source ~/.config/nvim/init.vim<cr>
:nnoremap <Leader>speak :call jobstart('transsz --speak ' . expand("<cword>"))
:map <F1> <nop>
:imap <F1> <nop>
:nnoremap <esc> :
:nnoremap <tab> >>
:nnoremap , <<
:nnoremap << :cprev<cr>
:nnoremap >> :cnext<cr>

" Plugin {{{
:augroup Plugin_Mapping
:autocmd!
:autocmd FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
:augroup END
" }}}

" Python {{{
:augroup PythonNvim
:autocmd!
:autocmd FileType python :nnoremap <buffer> <F5> :vsplit term://python3.7 %<cr> :startinsert<cr>
:autocmd FileType python :nnoremap <buffer> <F6> :belowright split term://python3.7 %<cr> :startinsert<cr>
:augroup END
" }}}

" Html {{{
:augroup HTMLNvim
:autocmd!
:autocmd Filetype html :nnoremap <buffer> <F5> :call jobstart('google-chrome ' . expand('%'))<cr>
:augroup END
" }}}

" Cpp {{{
:augroup CPPNvim
:autocmd!
:autocmd Filetype cpp :nnoremap <buffer> <F4> :belowright split %.input<cr>
:autocmd FileType cpp :set makeprg=g++\ %
:autocmd Filetype cpp :nnoremap <F5> :make<cr>
" :autocmd Filetype cpp :nnoremap <buffer> <F5> :belowright split term://sh -c 'echo \"[F5 Debug/Standard Input] Compiling your code...\" ; g++ % -g && echo \"Done, the program already started. Insert mode on\" && ./a.out'<cr> :startinsert<cr>
:autocmd Filetype cpp :nnoremap <buffer> <F6> :belowright split term://sh -c 'echo \"[F6 Debug/Input File] Compiling your code...\" ; g++ % -g && echo \"Done, the program already started. Testing from input file\" && ./a.out < %.input'<cr> 
:autocmd Filetype cpp :nnoremap <buffer> <F7> :belowright split term://sh -c 'echo \"[F7 OJ/Input File] Compiling your code...\" ; g++ % -g -DONLINE_JUDGE && echo \"Done, the program already started. Testing from input file\" && ./a.out < %.input'<cr> 
:autocmd Filetype cpp :nnoremap <buffer> <F8> :belowright split term://sh -c 'echo \"[F8 Debug/GDB] Compiling your code...\" ; g++ % -g && gdb ./a.out'<cr> :startinsert<cr>
:augroup END
" }}}

" {{{ C
:augroup CNvim
:autocmd!
:autocmd FileType c :set tags+=/home/garyparrot/tags
:autocmd FileType c :let &makeprg = "gcc % " . $lib
:autocmd Filetype c :nnoremap <F5> :make<cr>
:autocmd Filetype c :nnoremap <F6> :belowright split term://./a.out<cr> :startinsert<cr>
" :autocmd Filetype c :nnoremap <F5> :belowright split term://compile_linux.sh % <cr>:startinsert<cr>'
:autocmd Filetype c :nnoremap <leader>ifw Iif((<esc>A))<esc>
" :autocmd Filetype c :nnoremap <c-]> <c-w><c-]><c-w>T
:augroup END
" }}}

" Go {{{
:augroup GoNvim
:autocmd FileType go :nnoremap <F5> :belowright split term://go build %<cr> :startinsert<cr>
:autocmd FileType go :nnoremap <F6> :belowright split term://./%:t:r<cr> :startinsert<cr>
:augroup END
" }}}

:augroup Lua
:autocmd!
:autocmd Filetype lua :nnoremap <F5> :split term://lua %<cr>
:augroup END