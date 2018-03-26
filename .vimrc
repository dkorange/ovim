""""""""""""""""""""""""""""""""""""""""""""""""
""" Genernal setting
" 去掉vi一致性模式
set nocompatible
" 设置backspace的工作方式
set backspace=indent,eol,start

"
syntax enable
set hlsearch
set incsearch
set ruler
"Set magic , for regular expressigs
set magic  
set showmatch
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set encoding=utf-8
au BufNewFile,BufRead *.pat setf html
au Filetype python setl noet ts=4 sw=4

""""""""""""""""""""""""""""""""""""""""""""""""
""" maps 
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>



""""""""""""""""""""""""""""""""""""""""""""""""
""" begin vim-plug
call plug#begin('~/.vim/plugged')
" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
" True Sublime Text style multiple selections for Vim
"Plug 'terryma/vim-multiple-cursors'
" The NERDTree
Plug 'scrooloose/nerdtree'
" EditorConfig
"Plug 'editorconfig/editorconfig-vim'
" Syntastic
Plug 'vim-syntastic/syntastic'
" YCM
Plug 'Valloric/YouCompleteMe'
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" gen ycm conf
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""
""" lightline.vim setting
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


""""""""""""""""""""""""""""""""""""""""""""""
""" Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""
""" ycm setting
let g:ycm_confirm_extra_conf = 0

