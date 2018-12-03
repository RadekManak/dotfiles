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
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe' 
Plugin 'mboughaba/i3config.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"


call vundle#end()
syntax on 
filetype plugin indent on
set number
colorscheme tokyo-metro

map <C-n> :NERDTreeToggle<CR>

set expandtab
set number
set cursorline
set relativenumber
set shiftwidth=2
set softtabstop=2
