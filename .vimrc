
" theme
packadd! dracula
colorscheme dracula

" disable bell sound and screen flash
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" ville settings
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
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
set splitbelow

" turn off search highlight with comma and space
nnoremap <leader><space> :nohlsearch<CR>

" ctrlp
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_show_hidden=1
map <C-p> :CtrlP<CR>

" nerdtree
let NERDTreeShowHidden=1 " show hidden files
" toggle nerdtree
map <C-o> :NERDTreeToggle<CR>
let NERDTreeAutoDeleteBuffer = 1 " delete buffer when file is deleted
let NERDTreeQuitOnOpen = 1 " close nerdtree when you open a file
" open nerdtree on the current file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" airline
" let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ' |  '
let g:airline_right_sep = ''
let g:airline_section_warning = ''
let g:airline_section_y = ''
let g:airline_section_x = ''
set laststatus=2 " for airline
