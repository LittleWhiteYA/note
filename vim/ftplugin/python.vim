"" Press F8 enable to auto fix lint
" nnoremap <F8> :Black<CR> :update<CR>
" inoremap <F8> <ESC>:Black<CR> :update<CR>i
nnoremap <F8> :call CocAction('format')<CR>
inoremap <F8> <ESC>:call CocAction('format')<CR>i

" let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_python_flake8_exec = 'poetry'
" let g:syntastic_python_flake8_args = ['run', 'flake8']

"" https://www.youtube.com/watch?v=Gs1VDYnS-Ac&ab_channel=Leeren
"" set path=.,**
"" set wildignore=*.pyc
