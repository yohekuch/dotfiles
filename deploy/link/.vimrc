" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on
set tabstop=4
set t_Co=256
"colorscheme xoria256
"colorscheme default
"colorscheme desert
colorscheme elflord

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set number
set autoindent
set cindent
set shiftwidth=4
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
set wrapscan
set nobackup
set noswapfile
set ruler
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022jp,euc-jp,cp932

hi Pmenu ctermbg=12 ctermfg=255
hi PmenuSel ctermbg=195 ctermfg=12
hi PmenuSbar ctermbg=255

map <F2> :w <ENTER>:!perl % <ENTER>
vmap ,# :s/^/#/<CR>:nohlsearch<CR>
vmap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vmap ," :s/^/"/<CR>:nohlsearch<CR>
vmap ,c :s/^#\\|^"\\|^\/\///<CR>:nohlsearch<CR>
inoremap <C-a> <home>
inoremap <C-e> <end>
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-p> <up>
inoremap <C-n> <down>
inoremap <C-d> <del>
nnoremap ; :
vnoremap ; :
nmap etoj :echo system("grep -A1 ^<C-R><C-W>$ /home/prince/lenny/gene.txt")<CR>
"imap ( ()<LEFT>
"imap { {}<LEFT>
"inoremap {<CR> {<ENTER>}
"if pumvisible()
	"a command to restore to original text and select the first match
"-	return "\<C-p><Down>"
"+	return "\<C-p>\<Down>\<C-p>"
inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>" : "\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<CR>" : "\<Tab>"
