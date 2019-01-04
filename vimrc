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
Plugin 'junegunn/goyo.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'koirand/tokyo-metro.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'pearofducks/ansible-vim'
Plugin 'mboughaba/i3config.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"


call vundle#end()

" Copy selected text to system clipboard (gvim required)
vnoremap <C-c> "*Y :let @+=@*<CR>"
map <C-p> "+P"

syntax on 
filetype plugin indent on
colorscheme tokyo-metro

map <C-n> :NERDTreeToggle<CR>

set updatetime=0
set expandtab
set mouse=a
set number
set showcmd
set cursorline
set relativenumber
set shiftwidth=2
set softtabstop=2
