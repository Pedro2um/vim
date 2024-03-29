" Don't try to be vi compatible
set autoread
set path+=**
"set hidden
set rnu!
set nocompatible
set wildmenu
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

syntax on
set noswapfile


"compile c++
nnoremap <F2> :!g++ -std=c++17 -Wshadow -Wall -o a *.cpp -O2 -Wno-unused-result
"build c++
nnoremap <F3> :!g++ -std=c++17 -Wshadow -Wall -o a *.cpp -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
"run
nnoremap <F1> ./a
"clear
nnoremap <F4> :!clear
set autoindent 
set smartindent
" Whitespace
set nowrap
"set textwidth=79
set formatoptions=tcqrn1
set noshiftround
set tabpagemax=100
" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim


" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
"set laststatus=2

" Last line
set showmode
set showcmd


"set foldmethod=indent
set updatetime=100

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search



" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:




""au InsertLeave * colorscheme darkblue
"au InsertLeave * colorscheme molokai


"plugins
call plug#begin()
Plug 'sickill/vim-monokai'
call plug#end()
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

colorscheme monokai



