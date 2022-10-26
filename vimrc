"Plugins
call plug#begin()
Plug 'tibabit/vim-templates'
Plug 'junegunn/vim-easy-align'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'gruvbox-community/gruvbox'

Plug 'jiangmiao/auto-pairs'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
call plug#end()

" Visual Configurations
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=0
syntax on
set autoindent
set encoding=UTF-8
colorscheme gruvbox
let g:tmpl_auto_initialize=0
let g:snipMate = { 'snippet_version' : 1 }

" HARD MODE
nnoremap <Left> :echo "No Left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
nnoremap <PageDown> :echo "No PageDown for you!"<CR>
nnoremap <PageUp> :echo "No PageUp for you!"<CR>
vnoremap <Left> :<C-u>echo "No Left for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
vnoremap <PageDown> :<C-u>echo "No PageDown for you!"<CR>
vnoremap <PageUp> :<C-u>echo "No PageUp for you!"<CR>
inoremap <Left> <C-o>:echo "No Left for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>
inoremap <PageDown> <C-o>:echo "No PageDown for you!"<CR>
inoremap <PageUp> <C-o>:echo "No PageUp for you!"<CR>

" ESC alternatives
inoremap lk <ESC>
" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" COC.nvim"
" Use tab for trigger completion with characters ahead and navigate.
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


