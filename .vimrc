call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"			\: '\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>'

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"inoremap <silent><expr> <Tab>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()

colorscheme gruvbox
let g:airline_powerline_fonts = 1
set clipboard=unnamedplus
set nu
set rnu
