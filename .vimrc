set rnu
syntax on
colorscheme onedark
"key maps
map <C-o> :FZF <CR>
map <C-p> :Rg <CR>
map <C-h> :noh <CR>
map <leader>b :execute "term git blame " . expand('%:p') <CR>
nnoremap <leader>v :tabedit ~/.vimrc<CR>
nnoremap <leader>s :stabedit ~/.vimrc<CR>source %<CR>

set laststatus=2
set hlsearch
set incsearch
set spell
"set statusline="path:%F line:%l"

    
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
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
