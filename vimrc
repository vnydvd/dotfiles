set nocompatible
filetype plugin on
syntax on
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set mouse=a

map <C-n> :NERDTreeToggle<CR>

" Pane navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" FzF
noremap <C-q> :Files<Cr>
noremap <C-g> :Ag<Cr>

" Yank to system clipboard
vnoremap <C-c> "*y

let g:ale_linters = {
\  'javascript': [],
\  'typescript': ['tslint'],
\  'ruby': [],
\  'java': [],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')
    
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    
    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}
    " Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
    Plugin 'ctrlpvim/ctrlp.vim'
    " Syntax checking plugin
    Plugin 'vim-syntastic/syntastic'
    " File system explorer
    Plugin 'preservim/nerdtree' 
    " statusline at the bottom of the vim
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Bundle 'vim-ruby/vim-ruby'
    Plugin 'tpope/vim-rails'
    
    " All of your Plugins must be added before the following linei

call vundle#end()            " required

filetype plugin indent on    " required
