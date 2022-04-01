set rnu
syntax on
colorscheme onedark
"key maps
map <C-p> :FZF <CR>
set laststatus=2
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'StanAngeloff/php.vim'
Plug 'dense-analysis/ale'
call plug#end()
