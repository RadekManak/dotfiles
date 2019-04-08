set nocompatible
filetype off

" Vundle boostrap
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  " Installed Plugins
  Plugin 'airblade/vim-gitgutter'
  Plugin 'rakr/vim-one'
  Plugin 'Raimondi/delimitMate'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'pearofducks/ansible-vim'
  Plugin 'mboughaba/i3config.vim'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  "Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'tpope/vim-fugitive'
  Plugin 'bronson/vim-trailing-whitespace'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'low-ghost/nerdtree-fugitive'
  Plugin 'tpope/vim-surround.git'
  Plugin 'python-mode/python-mode'
  Plugin 'lervag/vimtex'
call vundle#end()

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
