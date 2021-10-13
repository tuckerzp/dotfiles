set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

let g:indentLine_char = '|'

" highlight matching [{()}]
set showmatch

" show which mode you're currently in.
set showmode

" enable syntax processing
syntax enable

" show line number
set number

" Set the terminal title, if possible.
set title

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" use four spaces for each step of (auto)indent.
set shiftwidth=4

" hitting <Tab> will insert four spaces instead.
set tabstop=4
set softtabstop=4

" round indent to multiple of shiftwidth.
set shiftround

" use spaces instead of tabs to insert a tab.
set expandtab

" copy indent from current line when starting a new line
" (also deletes indents if nothing else is written on the line)
set autoindent

" wrap lines at 80 characters
set textwidth=80

" Enable the mouse in Visual, Insert, and Command modes
" This can be weird sometimes.
if has("mouse")
    set mouse=vic
endif
" nice terminal mouse behavior
set mouse=a

" exception: use tabs in Makefiles
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype haskell setlocal ts=2 sw=2 sts=2 expandtab

" Other junk
set linebreak
set showmatch
set hlsearch
set smartcase
set ignorecase
set smartindent

" Template files
autocmd BufNewFile *
\ let templatefile = expand("/home/tuckerzp/configs/vim/templates/") . expand("%:e")|
\ if filereadable(templatefile)|
\   execute "silent! 0r " . templatefile|
\   execute "normal Gdd/CURSOR\<CR>dw"|
\ endif|
\ startinsert!


" Avoid some security problems with directory-specific vimrc files
" This should be the last line of the file.
set secure
