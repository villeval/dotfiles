" general
syntax enable
:colorscheme onehalfdark

" tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" ui config
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching for [{()}]

" searching
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight with comma and space
nnoremap <leader><space> :nohlsearch<CR>

