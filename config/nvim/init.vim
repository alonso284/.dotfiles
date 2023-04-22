call plug#begin()
" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional

" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional

"  Snippets
Plug 'L3MON4D3/LuaSnip'             " Required
Plug 'rafamadriz/friendly-snippets' " Optional

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

" Inlay Hints
Plug 'simrat39/inlay-hints.nvim'

" Rust tools
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

" Surround
Plug 'kylechui/nvim-surround'

" Commentary
Plug 'terrortylor/nvim-comment'

" NerdTree
Plug 'preservim/nerdtree'
call plug#end()

lua require('nvim_comment').setup()
lua require('lsp-settings')
lua require('inlay-settings')

set number
set relativenumber

" ESC alternatives
inoremap lk <ESC>

" HARD MODE Dont allow arrows
nnoremap <Left> :echo "No Left for you!"<CR>
nnoremap <Right> :echo "No Right for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
nnoremap <ScrollWheelUp> :echo "No ScrollWheelUp for you!"<CR>
nnoremap <ScrollWheelDown> :echo "No ScrollWheelDown for you!"<CR>
vnoremap <Left> :<C-u>echo "No Left for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
vnoremap <ScrollWheelUp> :<C-u>echo "No ScrollWheelUp for you!"<CR>
vnoremap <ScrollWheelDown> :<C-u>echo "No ScrollWheelDown for you!"<CR>
inoremap <Left> <C-o>:echo "No Left for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>
inoremap <ScrollWheelUp> <C-o>:echo "No ScrollWheelUp for you!"<CR>
inoremap <ScrollWheelDown> <C-o>:echo "No ScrollWheelDown for you!"<CR>

" NerdTree Configurations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
