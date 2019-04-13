set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'rakr/vim-one'
  Plug 'Raimondi/delimitMate'
  Plug 'scrooloose/nerdtree'
  Plug 'Valloric/YouCompleteMe'
  Plug 'pearofducks/ansible-vim'
  Plug 'mboughaba/i3config.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-fugitive'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'low-ghost/nerdtree-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'python-mode/python-mode'
  Plug 'lervag/vimtex'
call plug#end()

" Vimtex Settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'

" Copy selected text to system clipboard (gvim required)
vnoremap <C-c> "*Y :let @+=@*<CR>"
map <C-p> "+P"

filetype plugin indent on
syntax on
colorscheme one
set background=dark
set termguicolors

let mapleader = ","

let g:UltiSnipsSnippetsDir="~/.vim/snips"
let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]
"let g:UltiSnipsSnippetDirectories=["snips"]

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
map <C-n> :NERDTreeToggle<CR>

"Ansible
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "a"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

set updatetime=0
set noswapfile
set expandtab
set number
set showcmd
set cursorline
set relativenumber
set shiftwidth=2
set softtabstop=2
