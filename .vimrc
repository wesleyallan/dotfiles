" Numera Linhas
set nu!

" Indentação automática
set autoindent

" Destaca linha
" set cursorline

" Ativa Mouse
set mouse=a

" Colore a busca
set incsearch

" Menu nos comandos do vim
set wildmenu

" Cor de fundo na barra inferior
set laststatus=2

" Titulo com nome do arquivo
set title

" Using plug
colorscheme wal

" Ativando Plugin IdentLine
let g:indentLine_enabled = 1

" Atalho NERDTree
map <C-n> :NERDTreeToggle<cr>
set encoding=utf8
let g:indentLine_enabled = 1

" Navegação entre os buffers
nnoremap <S-Right> :bn<cr>
nnoremap <S-Left> :bp<cr>
nnoremap <S-x> :bp\|bd #<cr>

" Confif Plugin CtrlP
let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

"Config Plugin Nerdcommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

" Config Plugin Ale
let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0


" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

source $HOME/.coc.vimrc
