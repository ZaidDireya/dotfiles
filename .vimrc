set nu rnu
syntax on
colorscheme onedark
"key maps
map <C-o> :FZF <CR>
map <C-p> :Rg <CR>
map <C-h> :noh<CR>
map <leader>b :execute "term git blame " . expand('%:p') <CR>
nnoremap <leader>v :tabedit ~/.vimrc<CR>
nnoremap <leader>s :w<CR>:source %<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>l :e#<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>d :ALEGoToDefinition<CR>
nnoremap <leader>j :%!python -m json.tool<CR>
nnoremap <leader>c "+
nnoremap <leader>p "+p
nnoremap <leader>e :let @+ = expand("%")<CR>
nnoremap <leader>] :ALENextWrap<CR>
nnoremap <leader>[ :ALEPreviousWrap<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>cm :Commit<CR>
set laststatus=2
set hlsearch
set incsearch
set spell
set pastetoggle=<F11>
let NERDTreeShowHidden=1
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir
packadd! matchit
" Required, explicitly enable Elixir LS

let g:ale_linters = {
\   'elixir': ['elixir-ls', 'credo'],
\}

let g:ale_fixers = {
\   'elixir': ['mix_format'],
\}
" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("/home/zaid/tools/elixir-ls/rel")
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
Plug 'dhruvasagar/vim-table-mode'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
