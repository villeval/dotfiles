" general
syntax enable
:colorscheme onehalfdark

" plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
" set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim

" disable bell sound and screen flash
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" ville settings
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching for [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight with comma and space
nnoremap <leader><space> :nohlsearch<CR>

" ctrlp
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1
map <C-p> :CtrlP<CR>

" nerdtree toggle
map <C-o> :NERDTreeToggle<CR>

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
