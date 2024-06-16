"Plugins
call plug#begin()
Plug 'rust-lang/rust.vim'

" NerdTree and others
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Surround
Plug 'tpope/vim-surround'

" Commentary
Plug 'tpope/vim-commentary'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

Plug 'nordtheme/vim'
Plug 'morhetz/gruvbox'

Plug 'github/copilot.vim'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'ryanoasis/vim-devicons'
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

" FZF Configurations
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" ESC alternatives
inoremap lk <ESC>

" Snipmate config
let g:snipMate = { 'snippet_version' : 1 }

" Surround congif
au Filetype cpp let b:AutoPairs = {"/*": "*/"}
au FileType html let b:AutoPairs = {'<!--' : '-->'}

" HARD MODE Dont allow arrows
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

" NerdTree Configurations
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

colorscheme default
