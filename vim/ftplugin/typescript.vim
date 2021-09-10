set shiftwidth=2
set tabstop=2

" gf, https://vim.fandom.com/wiki/Open_file_under_cursor
" typically you don't put the .js on your require('./path/to/a/js/file')
set suffixesadd+=.js

" comment since 2021/09/10, switch to coc.vim
" nnoremap <F8> :let syntastic_typescript_eslint_args='--fix'<CR>
"     \ \| :w
"     \ \| :edit
"     \ \| :let syntastic_typescript_eslint_args=''<CR>
" inoremap <F8> <ESC>:let syntastic_typescript_eslint_args='--fix'<CR>
"     \ \| :w
"     \ \| :edit
"     \ \| :let syntastic_typescript_eslint_args=''<CR>i

" function! s:getEslint()
"     let eslintrc_path = finddir('.git', '.;')
"     let eslint_path = fnamemodify(eslintrc_path, ':h')

"     return eslint_path.'/node_modules/.bin/eslint'
" endfunction

" let eslint = s:getEslint()

" if executable(eslint)
"     let g:syntastic_typescript_eslint_exe = eslint
" else
"     let g:syntastic_typescript_eslint_exe = 'eslint'
" endif

" let g:syntastic_typescript_checkers = ['eslint']

" function! s:getTsc()
"     let tsc_path = finddir('.git', '.;')
"     let tsc_path = fnamemodify(tsc_path, ':h')

"     return tsc_path.'/node_modules/.bin/tsc'
" endfunction

" let g:typescript_compiler_binary = s:getTsc()
" let g:typescript_compiler_options = '--noEmit -p ~/yoctol/kurator/server/tsconfig.json'

