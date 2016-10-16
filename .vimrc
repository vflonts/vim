" vim: set fileencoding=utf-8
set nocompatible
set autoindent autowrite cindent ignorecase incsearch hlsearch smartcase
set fileencodings=utf-8,cp1251,koi8-u fileformats=unix,dos,mac hidden
set lazyredraw ruler scrolloff=4 sidescrolloff=4 showcmd showmatch pt=<F12>
set tabstop=4 shiftwidth=4 softtabstop=4 smarttab wildmenu wildcharm=<Tab>
set laststatus=2 nuw=6 
if &term =~ "256"
  set t_Co=256 background=dark 
  " colorscheme molokai
  colorscheme xoria256
endif
filetype plugin indent on
syntax enable
" auto completion
set completeopt=longest,menuone omnifunc=syntaxcomplete#Complete
" expand tab to spaces for safe types
autocmd FileType c,cpp,php,python,perl set expandtab cscopetag
" fix cursor nav for long lines
nnoremap <Down> gj
nnoremap <Up> gk
inoremap <Down> <C-O>gj
inoremap <Up> <C-O>gk
" fix paste with enabled autoindent
inoremap <silent> <C-U> <Esc>u:set paste<CR>.:set nopaste<CR>gi
" make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>
" bloack idents in visual
vmap < <gv
vmap > >gv
" EOF
