" Don't emulate vi bugs
set nocompatible

" Pathogen stuff
filetype off
call pathogen#infect()

" Fix filetype detection
autocmd BufNewFile,BufRead *.tex set ft=tex

" Syntax highlighting
syntax enable
filetype plugin indent on

" Autocompletion
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version control
"set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.pdf " Images and PDFs
set wildignore+=*.o,*.pyc,*.aux,*.cmi,*.cmo,*.cmx " Various compiled formats

" Indentation and such
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Reformatting
nnoremap Q gq
vnoremap Q gq

" Show matching brace
set showmatch

" Visual bells
"set visualbell
set vb t_vb=

" Always show ruler
set ruler
set title

" Search stuff
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Automatically load changed buffers
set autoread

" Ctags
set tags=tags;/
nnoremap <leader>d <C-w>}
nnoremap <leader>z <C-w>z

" Try to keep backups and .swp files out of the working directory
set directory=~/.tmp//,/tmp//,.
set backupdir=~/.tmp//,/tmp//,.

" Backspacing
set backspace=indent,eol,start

" Did you forget to sudo?
cmap w!! w !sudo tee % >/dev/null

" Useful (re)maps
nnoremap ' `
nnoremap ` '
let mapleader = ','

" Trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Make lines collapsable
vmap <space> zf
nmap <space> zd

inoremap jk <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
inoremap JK <Esc>

nnoremap K i<CR><Esc>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
