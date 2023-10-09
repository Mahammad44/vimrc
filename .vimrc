syntax on
filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si
set number

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'jianmiao/auto-pair'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:gruvbox_termcolors=16
set termguicolors
colorscheme gruvbox
set bg=dark

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
