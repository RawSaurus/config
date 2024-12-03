:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set scrolloff=15
:set clipboard="unnamedplus"
:set cursorline

let mapleader=' '

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/natebosch/vim-lsc'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'diegoulloao/neofusion.nvim'
Plug 'https://github.com/aonemd/fmt.vim'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua' 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
" or                                , { 'branch': '0.1.x' }	
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
set encoding=UTF-8

call plug#end()


" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
" Telescope 
nnoremap <C-a> :lua require'telescope.builtin'.resume{}<CR>
nnoremap <leader>ss :Telescope find_files<CR>
nnoremap <leader>sg <cmd>Telescope live_grep<CR>

nmap <F8> :TagbarToggle<CR>
map  <leader>f <Plug>(easymotion-bd-f)
imap jk <Esc>
imap kj <Esc>

:set completeopt-=preview " For No Previews

:set guifont=*

set background=dark
colorscheme neofusion

let g:fmt_command={ 'go': 'gofmt -w'}

" let g:lsc_server_commands = {'java': 'E:/Java/'}


let g:tagbar_ctags_bin="C:/Users/Asus/ctags58/ctags58/ctags.exe"

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-go
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_theme='deus'
let g:deus_termcolors= 16
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
" let g:airline_left_sep = '>'
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = '<'
" let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
