"language en_US

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
Plug 'neovim/nvim-lspconfig'
Plug 'anott03/nvim-lspinstall'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

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

let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 40 "30 by default
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim` 
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window 
"let g:nvim_tree_auto_ignore_ft = {'startify', 'dashboard',} "empty by default, don't auto open tree on specific filetypes. 
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file 
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer 
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open 
let g:nvim_tree_hide_dotfiles = 1 
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons). 
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options 
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open 
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file 
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw 
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities) 
let g:nvim_tree_show_icons = {'git': 1, 'folders': 0, 'files': 0}
"If 0, do not show the icons for one of 'git' 'folder' and 'files' 
"1 by default, notice that if 'files' is 1, it will only display 
"if nvim-web-devicons is installed and on your runtimepath  
"You can edit keybindings be defining this variable 
"You don't have to define all keys. 
"NOTE: the 'edit' key will wrap/unwrap a folder and open a file 
let g:nvim_tree_bindings = {
		\ 'edit':            ['<CR>', 'o'],     
		\ 'edit_vsplit':     '<C-v>',     
		\ 'edit_split':      '<C-x>',     
		\ 'edit_tab':        '<C-t>',     
		\ 'close_node':      ['<S-CR>', '<BS>'],     
		\ 'toggle_ignored':  'I',     
		\ 'toggle_dotfiles': 'H',     
		\ 'refresh':         'R',     
		\ 'preview':         '<Tab>',     
		\ 'cd':              '<C-]>',     
		\ 'create':          'a',     
		\ 'remove':          'd',     
		\ 'rename':          'r',     
		\ 'cut':             'x',     
		\ 'copy':            'c',     
		\ 'paste':           'p',     
		\ 'prev_git_item':   '[c',     
		\ 'next_git_item':   ']c',     
		\ 'dir_up':          '-',     
		\ 'close':           'q',     
		\ }  
" Disable default mappings by plugin 
" Bindings are enable by default, disabled on any non-zero value 
" let nvim_tree_disable_keybindings=1  
" default will show icon by default if no icon is provided 
" default shows no icon by default 
let g:nvim_tree_icons = {     
			\ 'default': '',     
			\ 'symlink': '',     
			\ 'git': {     
			\   'unstaged': "✗",     
			\   'staged': "✓",     
			\   'unmerged': "",     
			\   'renamed': "➜",     
			\   'untracked': "★"     
			\   },     
			\ 'folder': {     
			\   'default': "",     
			\   'open': "",     
			\   'symlink': "",     
			\   }     
			\ }  
nnoremap <C-n> :NvimTreeToggle<CR> 
nnoremap <leader>r :NvimTreeRefresh<CR> 
nnoremap <leader>n :NvimTreeFindFile<CR> 
" NvimTreeOpen and NvimTreeClose are also available if you need them  

set termguicolors 

" this variable must be enabled for colors to be applied properly  
" a list of groups can be found at `:help nvim_tree_highlight` 
highlight NvimTreeFolderIcon guibg=blue
