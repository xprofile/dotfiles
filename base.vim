
let mapleader=";"

"" base config

set ff=unix
set t_Co=256
set nocompatible
set backspace=indent,eol,start
set backspace=2

set autoindent
set cindent
set smartindent

filetype on
filetype indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Do not try to connect to X server
" Which can reduce the boot time.
set clipboard=exclude:.*

set nobackup
set nowritebackup
set noswapfile

set cursorline
set number
set ruler
set hlsearch

set background=dark
syntax on
colorscheme onedark

" See [http://vim.wikia.com/wiki/Highlight_unwanted_spaces]
" - highlight trailing whitespace in red
" - have this highlighting not appear whilst you are typing in insert mode
" - have the highlighting of whitespace apply when you open new buffers
highlight ExtraWhitespace ctermbg=gray guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches() " for performance

set expandtab | set tabstop=4 | set shiftwidth=4                    " default tab config
au FileType make set noexpandtab | set tabstop=4 | set shiftwidth=8 " for Makefile

au FileType c,cpp,python,vim set textwidth=120
" set colorcolumn=121
" hi ColorColumn ctermbg=236 guibg=gray

set viewoptions=cursor
au BufWinLeave ?* mkview
au VimEnter ?* silent! loadview

set fileencodings=utf-8,ucs-bom,gbk,gb2312,big5,latin1
set fileformats=unix,mac,dos

"" taglist config
set tags=./.tags;,.tags

let Tlist_Auto_Highlight_Tag = 1
let Tlist_Use_Right_Window   = 1


"" ---------------------------- airline ---------------------------""

let g:airline_theme='tomorrow'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_symbols.maxlinenr = '⎇'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"" ---------------------------- key map --------------------------""
"" for vim-buftabline
nnoremap <TAB> :bnext<CR>

"" for fzf files window
nnoremap <silent> <C-p> :Files<CR>

" key binding for ale
nmap <silent> <leader>jj :ALENext<cr>
nmap <silent> <leader>jk :ALEPrevious<cr>

