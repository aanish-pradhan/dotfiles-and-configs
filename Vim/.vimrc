" Vim configuration file.
"
" @author Aanish Pradhan
" @version 2023.07.06

" EDITOR SETTINGS

" Backups & Swap
set backupdir=./.backup,.,/tmp "Backup file storage
set directory=./.backup,.,/tmp "Swap file storage

" Encoding
set encoding=utf-8 "Loaded (buffered) and copied (registered) text
set fileencoding=utf-8 "Written text
set termencoding=utf-8 "Displayed (terminal) text

" Formatting and styling
syntax enable "Syntax coloring
set colorcolumn=80,120 "Character limit guideline/ruler
"set guifont=SF_Mono:h10:cANSI:qDRAFT "gVim font on Windows
set nowrap "Stop text wrapping

" Indentation
filetype plugin indent on "Loads specific configurations for given filetype
"set autoindent "Automatic indentation
set shiftwidth=4 "Automatic indentation size
set smartindent "Automatic identation based on syntax
set softtabstop=4 "Tab and backspace size
set tabstop=4 "\t character size

" Navigation
set backspace=indent,eol,start "Fix backspace issue in INSERT mode
"Backspace issue in INSERT mode: https://tinyurl.com/mucjfdve

set mouse=a "Mouse support
set nocompatible "Disable Vi compatibility and fix navigation display issue
"Navigation display issue: https://tinyurl.com/zzszx97e

set number "Line numbering

" Searching
set hlsearch "Highlight all instances
set incsearch "Search character by character


"   R: I do not get why anyone would use spaces over tabs. I mean why not just 
"      use Vim over Emacs?

"   W: I do use Vim over Emacs...

"   R: Oh, God, help us!
