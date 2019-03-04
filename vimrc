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

call vundle#end()

" Copy selected text to system clipboard (gvim required)
vnoremap <C-c> "*Y :let @+=@*<CR>"
map <C-p> "+P"

syntax on
filetype plugin indent on
colorscheme one
set background=dark
set termguicolors

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
map <C-n> :NERDTreeToggle<CR>

"Ansible
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "a"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

set updatetime=0
set noswapfile
set expandtab
set mouse=a
set number
set showcmd
set cursorline
set relativenumber
set shiftwidth=2
set softtabstop=2
