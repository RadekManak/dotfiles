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
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
  Plug 'lervag/vimtex'
  Plug '907th/vim-auto-save'
call plug#end()

let g:pymode_python = 'python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Vimtex Settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'

" Enable autosave in tex files
let g:auto_save = 0
augroup ft_markdown
  au!
  au FileType tex let b:auto_save = 1
augroup END

" Copy selected text to system clipboard (gvim required)
vnoremap <C-c> "*Y :let @+=@*<CR>"
map <C-p> "+P"

filetype plugin indent on
syntax on
colorscheme one
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let maplocalleader = "\\"
let mapleader = ","

"Save read-only file.
command Sudow w !sudo tee % >/dev/null

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
