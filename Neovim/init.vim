"My init.vim file for use with the Windows Subsystem for Linux (WSL)."
""
"@author Aanish Pradhan"
"@version 07/22/2022"

"SYNTAX HIGHLIGHTING"

syntax on

runtime! /usr/share/vim/vim81/syntax/ "System"
runtime! ~/.local/share/neovim/Syntax-Configuration-Files/ "User" 

"EDITOR SETTINGS" 

set colorcolumn=80 "Character limit marker"
set backupdir=~/.neovim-backups/ "Backup directory"
"set guifont=SF_Mono:h10:cANSI:qDRAFT GUI font on Windows"
set hlsearch "Search highlighting"
set incsearch "Incremental search"               
set mouse=a "Mouse support"
set noerrorbells "Silence error bells"
set nowrap "Stop text wrap"
set shiftwidth=4 "Automatic indentation size"
set smartindent "Automatic indentation"
set softtabstop=4 "Backspace movement size"
set tabstop=4 "Indentation size"

"STATUS LINE SETTINGS"

function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	let l:branchname = GitBranch()
	return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2 "Enable status line"
set statusline=GIT:%{StatuslineGit()}\ PATH:%F\ FILETYPE:\ %y "Git, Path and filetype information"
set statusline+=%= "Right align from henceforth"
set statusline+=MODE:\[%{mode()}\]\ OS:[%{&ff}]\ row:col[%L:%v]\ DATE\/TIME:%{strftime('%c')} "Mode, OS, Position and Date/Time information"

" R: I do not get why anyone would use spaces over tabs. I mean why not just use
"	 Vim over Emacs?

"	W: I do use Vim over Emacs.

"	R: Oh, God, help us!

"	-- Silicon Valley (S03 E06)"