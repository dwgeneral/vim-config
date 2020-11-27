
filetype on
set langmenu=none
set fileencodings=utf-8
set fileencoding=utf-8
set encoding=utf8

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number
set autoindent
set hlsearch
set incsearch
set encoding=utf-8
" highlight Normal ctermfg=white ctermbg=cyan
set nowrap
syntax enable

let g:proj_window_width=5
set laststatus=2


map <C-T> :FufFile<CR>
map <C-E> :MRU<CR>
map <C-S-M> :Rmodel<CR>
map <C-S-C> :Rcontroller<CR>
map <C-S-U> :Runit<CR>
map <C-S-L> :Rfunctional<CR>
map <C-H> :Rhelper<CR>
map <C-V> :Rview<CR>
map <C-J> :ZoomWin<CR>


" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" match Todo /\s\+$/
filetype plugin on
let mapleader = ","


" THE VIM OUTLINER (TVO)
" defaults:
let otl_install_menu=1
let no_otl_maps=0
let no_otl_insert_maps=0

" overrides:
let otl_bold_headers=0
let otl_use_thlnk=0

" au BufWinLeave *.otl mkview
" au BufWinEnter *.otl silent loadview
let maplocalleader = ","

""Only do this part when compiled with support for autocommands.
"if has("autocmd")
"  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"endif

" ============== Vundle Config =================

set nocompatible               " be iMproved 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
" ============== Vundle part =================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



Plugin 'gmarik/vundle'
" Brief help
" :BundleList
" :BundleInstall
" :BundleSearch
" :BundleClean

" My Bundles here:
"
" original repos on github
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'tsaleh/vim-matchit.git'
Plugin 'ecomba/vim-ruby-refactoring.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'YankRing.vim'
Plugin 'vividchalk.vim'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'mru.vim'
Plugin 'greplace.vim'
Plugin 'rking/ag.vim'
Plugin 'slim-template/vim-slim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'godlygeek/tabular'
Plugin 'gabrielelana/vim-markdown'
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required

colorscheme vividchalk
set background=light
set background=dark

filetype plugin indent on     " required!

" ============== Vundle Config =================

map <S-F> <Leader><Leader>f
map <Leader>a :YRShow<CR>
map <Leader>t :NERDTree<CR>
map <Leader>q :q<CR>
map <Leader>f :Rfixture<CR>
map <Leader>rj :Rjavascript<CR>

"autocmd BufEnter * cd %:p:h
autocmd Filetype gitcommit setlocal spell textwidth=72

let g:rustfmt_autosave = 1
