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
Plug 'mfussenegger/nvim-lint'
Plug 'lukas-reineke/indent-blankline.nvim'

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

" Define how menus work
"set completeopt=menuone,noinsert,noselect
set completeopt=menu,menuone,noselect

" Define how search result count works
set shortmess+=c

" Configure crayon usage
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

" Key mapping
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <leader>l :!pylint %<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <TAB> <C-w>w
nnoremap <C-n> :n<CR>
nnoremap <C-p> :N<CR>
inoremap <leader>c <C-o>:call NERDComment(0,"toggle")<C-m>

" Configure the completion part of nvim IDE
lua require('completion.settings')

" Goto stuff
"lua vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
"lua require('dptbinds.stuff')


" Linting
lua require('lint').linters_by_ft = {python = {'flake8', 'pycodestyle'}}
autocmd BufWritePost <buffer> lua require('lint').try_lint()
autocmd BufRead <buffer> lua require('lint').try_lint()
autocmd InsertLeave <buffer> lua require('lint').try_lint()
autocmd TextChanged <buffer> lua require('lint').try_lint()

