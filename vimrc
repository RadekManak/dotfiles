set nocompatible
filetype off

" Vundle boostrap
if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Color schemes
Plugin 'koirand/tokyo-metro.vim'
Plugin 'Valloric/YouCompleteMe' 

" .i3/config highlight
Plugin 'mboughaba/i3config.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-v>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"


call vundle#end()
syntax on 
filetype plugin indent on
colorscheme tokyo-metro

set expandtab
set shiftwidth=2
set softtabstop=2
