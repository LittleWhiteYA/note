set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " autocomplete, https://github.com/Valloric/YouCompleteMe
    " need to compile ./install.py after install
    Plugin 'Valloric/YouCompleteMe'

    " 主要功能是相同 project 的 code 在不同 editor 下能夠保持一致
    " 會讀取 .editorconfig
    Plugin 'editorconfig/editorconfig-vim'

    " 檢查 eslint 語法
    Plugin 'scrooloose/syntastic'

    " added nerdtree
    Plugin 'scrooloose/nerdtree'

    " snippet 打縮寫會自動完成 E.g. cl => console.log
    Plugin 'SirVer/ultisnips'

    " contains snippets files and used by SirVer/ultisnips
    Plugin 'honza/vim-snippets'

    " https://github.com/terryma/vim-multiple-cursors
    " multiple selections
    Plugin 'terryma/vim-multiple-cursors'

    " show git diff
    Plugin 'airblade/vim-gitgutter'

    " https://github.com/christoomey/vim-system-copy
    " enable to copy something in vim to system clipboard
    Plugin 'christoomey/vim-system-copy'

    " https://github.com/scrooloose/nerdcommenter
    Plugin 'scrooloose/nerdcommenter'

    " https://github.com/leafgarland/typescript-vim
    Plugin 'leafgarland/typescript-vim'

    " black for python, https://black.readthedocs.io/en/stable/editor_integration.html
    Plugin 'psf/black'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line))))

"-------------------------------------------------------------------------------------------

"" file encoding utf-8
set encoding=utf-8

"" 設定 tab 的字元數
set tabstop=4

"" 設定 tab 為空白
set expandtab

"" show line number
set number

"" 設定縮排寬度
set shiftwidth=4

"" 自動縮排 (優於 auto indent)
set smartindent

"" 顯示目前的游標位置
set cursorline

"" 進階查詢, 輸入字符後自動尋找, default 會等輸入完
set incsearch

"" 自動註解
set formatoptions+=r

"" 設定一行長度
set textwidth=120

set hlsearch

"" inoremap只在 insert 模式下生效
"" vnoremap只在 visual 模式下生效
"" nnoremap只在 normal 模式下生效
"" Press F5 to refresh vimrc
nnoremap <F5> :source $MYVIMRC<CR>
"" Press F6 to change hlsearch
nnoremap <F6> :set hlsearch!<CR>
nnoremap <F7> :set paste!<CR>
inoremap <F7> <ESC>:set paste!<CR>i
nnoremap <F9> :NERDTreeToggle<CR>

" replace mark word without overwriting your last yank
vnoremap p "_dP
nnoremap ln :lnext<CR>
nnoremap lp :lprevious<CR>

" Use CTRL-S for saving
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

autocmd FileType javascript
    \ setlocal shiftwidth=2 |
    \ setlocal tabstop=2

"" Press F8 enable to auto fix lint
autocmd FileType python nnoremap <F8> :Black<CR>
    \ \| :update<CR>
autocmd FileType python inoremap <F8> <ESC>:Black<CR>
    \ \| :update<CR>i

autocmd FileType javascript,typescript nnoremap <F8> :let syntastic_javascript_eslint_args='--fix'
    \ \| :let syntastic_typescript_eslint_args='--fix'<CR>
    \ \| :w
    \ \| :edit
    \ \| :let syntastic_javascript_eslint_args=''
    \ \| :let syntastic_typescript_eslint_args=''<CR>
autocmd FileType javascript,typescript inoremap <F8> <ESC>:let syntastic_javascript_eslint_args='--fix'
    \ \| :let syntastic_typescript_eslint_args='--fix'<CR>
    \ \| :w
    \ \| :edit
    \ \| :let syntastic_javascript_eslint_args=''
    \ \| :let syntastic_typescript_eslint_args=''<CR>i

"" 把每一行最後的空白在 :w 後自動刪掉
" autocmd BufWritePre * :%s/\s\+$//e


"" enable backspace key under insert mode
"" set backspace=indent,eol,start

"" 顯示右下角設定值
"" set ruler

"" set mouse enable in all mode
"" set mouse=a

"" 語法上色顯示, default on
"" syntax on

"" 命令模式按 Tab 自動補齊
set wildmenu

:inoremap ( ()<Esc>i
:inoremap (<End> (<Esc>i<End>
:inoremap () ()
:inoremap [<CR> [<CR>]<Esc>ko
:inoremap {<CR> {<CR>}<Esc>ko

"" 關掉 scratch 預覽
set completeopt-=preview

function! s:getEslint()
    let eslintrc_path = finddir('.git', '.;')
    let eslint_path = fnamemodify(eslintrc_path, ':h')

    return eslint_path.'/node_modules/.bin/eslint'
endfunction

let eslint = s:getEslint()

if executable(eslint)
    let g:syntastic_javascript_eslint_exe = eslint
    let g:syntastic_typescript_eslint_exe = eslint
else
    let g:syntastic_javascript_eslint_exe = 'eslint'
    let g:syntastic_typescript_eslint_exe = 'eslint'
endif
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_exec = 'poetry'
let g:syntastic_python_flake8_args = ['run', 'flake8']

"" run :mes then you can debug
" let g:syntastic_debug = 3

"" Suggest
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Add full file path to your existing statusline
set statusline+=%F
" let statusline always visible
set laststatus=2
" modified tag
set statusline+=\ %m

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_loc_list_height = 5

" YCM options https://github.com/Valloric/YouCompleteMe#options
" make YCM compatible with UltiSnips
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_stop_completion = ['<End>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" :h UltiSnips-how-snippets-are-loaded
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'mySnippets']

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Switching on spell-checking, To move to a misspelled word, use ']s' and '[s'.
" To mark a word as good and add it to your spellfile, move your cursor to the word and enter 'zg'.
" more http://vimdoc.sourceforge.net/htmldoc/spell.html
setlocal spell
" The following command will let us press CTRL-N or CTRL-P in insert-mode to complete the word we’re typing!
set complete+=kspell

" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime

" code folding
set foldmethod=indent
set foldlevel=2
" set foldnestmax=3
set foldenable!

" https://github.com/terryma/vim-multiple-cursors
" Custom mapping
let g:multi_cursor_select_all_word_key = '<C-a>'
" Default mapping
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

set listchars=tab:→·,trail:·,extends:»,precedes:«
set list

" set updatetime for vim-gitgutter
set updatetime=1000

" gf, https://vim.fandom.com/wiki/Open_file_under_cursor
" typically you don't put the .js on your require('./path/to/a/js/file')
set suffixesadd+=.js

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
