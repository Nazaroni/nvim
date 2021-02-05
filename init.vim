language en_US

set exrc " Wont open project .nvimrc without this here
set tabstop=2 softtabstop=2
set shiftwidth=2
set nu
set nowrap
set relativenumber
set hidden
set noerrorbells
set scrolloff=8
set incsearch
set smartindent
set termguicolors
set signcolumn=yes
set colorcolumn=80

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'tomtom/tcomment_vim'

call plug#end()


colorscheme gruvbox

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Sex!<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>
nnoremap <Leader>rp :resize 100<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" greatest remap ever
nnoremap <leader>p "+p

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

