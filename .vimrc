" Don't try to be vi compatible
set nocompatible

"run script
nnoremap <F5> :!bash s.sh
"valgrind
nnoremap <F6> :!valgrind ./exec
"make
nnoremap <F7> :!make
"compile
nnoremap <F8> :!g++ -std=c++11 -Wshadow -Wall -o exec *.cpp -O2 -Wno-unused-result
"build
nnoremap <F9> :!g++ -std=c++11 -Wshadow -Wall -o exec *.cpp -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
"run
nnoremap <F10> :!./exec

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set noshiftround

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
" colorscheme solarized
