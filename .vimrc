call plug#begin('~/.vim/vimplugins')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'

call plug#end()

set cursorline
"Line numbers
set number
set relativenumber

"Highlight trailling spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Show invisible characters
set list
set listchars=tab:▸\ ,trail:·

"Netwr https://shapeshed.com/vim-netrw/
"let g:netrw_banner=0 "remove the banner by default
let g:netrw_browse_split=2 "open file in a new horizontal split
let g:netrw_winsize=25 "25% width
let g:netrw_liststyle=3 "default tree visualization

noremap <C-p> :call fzf#run({'sink': 'e'})<CR>
noremap <C-t> :call fzf#run({'sink': 'tabe'})<CR>

"Disable annoying beeping
set noerrorbells
set vb t_vb=

set pastetoggle=<F2>
