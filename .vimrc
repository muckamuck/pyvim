" enable syntax highlighting
syntax enable

" do not wrap to the next line
set nowrap

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
"syntax on

let g:pymode = 1
let g:pymode_lint_ignore = "E501,C901"

autocmd FileType python set colorcolumn=120

set nofoldenable
