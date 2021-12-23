syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set colorcolumn=120
set showmatch
set encoding=utf-8
set guicursor=
set nohlsearch
set termguicolors
set scrolloff=4
set signcolumn=yes
set noincsearch

call plug#begin('~/.nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'romainl/vim-dichromatic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdcommenter'

" Completion black box
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()

" Status line stuff for lightline
set laststatus=2
set noshowmode

"lua require'lspconfig'.pyright.setup{on_attach=require'cmp'.on_attach}
"lua require'lspconfig'.tsserver.setup{on_attach=require'cmp'.on_attach}
"lua require'lspconfig'.bashls.setup{on_attach=require'cmp'.on_attach}
"lua require'lspconfig'.yamlls.setup{on_attach=require'cmp'.on_attach}
"lua require'lspconfig'.clangd.setup{on_attach=require'cmp'.on_attach}

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

colorscheme dichromatic
highlight Normal guibg=none

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <leader>l :!pylint %<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <TAB> <C-w>w
nnoremap <C-n> :n<CR>
nnoremap <C-p> :N<CR>
inoremap <leader>c <C-o>:call NERDComment(0,"toggle")<C-m>

lua require('completion.settings')
