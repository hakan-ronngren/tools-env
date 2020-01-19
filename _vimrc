set nocompatible
set showmatch
set incsearch
set hlsearch
set backspace=2
set hidden
set expandtab
"set number
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
set scrolloff=3
set bufhidden=hide
set autoindent
set cindent
set shiftwidth=4

filetype indent on
filetype plugin on
syntax on
set list
set listchars=nbsp:◊,tab:>·,extends:»,precedes:«,trail:•
"au BufReadPost,BufNewFile *.txx,*.cu set filetype=c

" Key bindings for quick buffer switching
nnoremap <silent> <tab> :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap <silent> <s-tab> :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
" Key bindings for the Tag List plugin: http://vim-taglist.sourceforge.net/manual.html
nnoremap <F2> :TlistSessionSave
nnoremap <F4> :TlistSessionLoad
nnoremap <silent> <F10> :TlistToggle<CR>
" Assist when breaking lines properly
nnoremap <F8> :set colorcolumn=72,80<CR>
nnoremap <s-F8> :set colorcolumn=<CR>
" No highlight
nnoremap <F9> :nohls<CR>
"
nnoremap <F12> g~ww
"
nnoremap <silent> <c-n> :set nu!<CR>

:imap § <ESC>

" taglist settings
:let Tlist_Display_Prototype = 1
:let Tlist_Exit_OnlyWindow = 1
:let Tlist_GainFocus_On_ToggleOpen = 1
:let Tlist_WinWidth = 40

au BufReadPost,BufNewFile *.pl,*.pm,*.t set filetype=perl

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * redraw!

" ls /usr/share/vim/vim*/colors/
:color delek
