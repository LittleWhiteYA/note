set shiftwidth=2
set tabstop=2

" gf, https://vim.fandom.com/wiki/Open_file_under_cursor
" typically you don't put the .js on your require('./path/to/a/js/file')
set suffixesadd+=.js

" comment since 2021/09/10, switch to coc.vim
" nnoremap <F8> :let syntastic_javascript_eslint_args='--fix'<CR>
"     \ \| :w
"     \ \| :edit
"     \ \| :let syntastic_javascript_eslint_args=''<CR>
" inoremap <F8> <ESC>:let syntastic_javascript_eslint_args='--fix'<CR>
"     \ \| :w
"     \ \| :edit
"     \ \| :let syntastic_javascript_eslint_args=''<CR>i

" function! s:getEslint()
"     let eslintrc_path = finddir('.git', '.;')
"     let eslint_path = fnamemodify(eslintrc_path, ':h')

"     return eslint_path.'/node_modules/.bin/eslint'
" endfunction

" let eslint = s:getEslint()

" if executable(eslint)
"     let g:syntastic_javascript_eslint_exe = eslint
" else
"     let g:syntastic_javascript_eslint_exe = 'eslint'
" endif
" let g:syntastic_javascript_checkers = ['eslint']

