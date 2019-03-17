""
"" plug config
call plug#begin('~/.configs/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lfv89/vim-interestingwords'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'justinmk/vim-dirvish'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'w0rp/ale'

Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()


source ~/.configs/cfg/misc.vim
source ~/.configs/cfg/leaderf.vim

source ~/.configs/cfg/ale.vim
