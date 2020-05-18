call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Colorschemes
Plug 'morhetz/gruvbox'

call plug#end()


" General
set number  " Show line numbers
set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set softtabstop=2 " Number of spaces per Tab

set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally

syntax on

" Auto close NERDTree if no more files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files in NERDTree
let NERDTreeShowHidden=1
syntax on

" enable copy to clipboard
set clipboard=unnamed

" copy to clipboard with Ctrl-C
map <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" paste from clipboard with Ctrl-V
set pastetoggle=<F10>
inoremap <C-v> <F10><C-r>+<F10>

"mapping
map<C-n> :NERDTreeToggle<CR>
