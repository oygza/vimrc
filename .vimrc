filetype off

"========== Vundle ==========
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on
"========== Vundle ==========

"========== vim UI ==========
" 显示当前模式
set showmode
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
" 搜索
set showmatch
set incsearch
set wrapscan
set hlsearch

" 自动检测外界更改文件
set autoread
" 自动对齐
set autoindent
" 背景
set background=dark
"========== vim UI ==========

set backspace=indent,eol,start
set linespace=0
set tabstop=4
set shiftwidth=4
set nowrap
set softtabstop=4

function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" 替换tab键
set expandtab
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2


" 开启行号显示
set number
" 不兼容vi模式
set nocompatible
" 开启文件类型检测
syntax on
syntax enable

" 可以使用鼠标在自动补全时使用
set mouse=a
" encoding setting
set fencs=utf-8,usc-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
