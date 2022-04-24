set rnu
syntax on
colorscheme onedark
"key maps
map <C-o> :FZF <CR>
map <C-p> :Rg <CR>
map <C-h> :noh <CR>
map <leader>b :execute "term git blame " . expand('%:p') <CR>
set laststatus=2
set hlsearch
set incsearch
set spell
"set file open autocomplete to list
set wildmode=list:longest
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'StanAngeloff/php.vim'
Plug 'dense-analysis/ale'
Plug 'elixir-editors/vim-elixir'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
