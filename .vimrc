" Comments in Vimscript start with a `"`.

" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with 
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

"undofile
set undofile
set undodir=~/.vim/undodir

"tab=2
set tabstop=2
set shiftwidth=2
set expandtab
"esc=jj
inoremap jj <Esc>`^

"//
map + I//

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plug 'mbbill/undotree'
nnoremap<C-u> :UndotreeToggle<cr>

Plug 'majutsushi/tagbar'
map<silent> <C-t> :TagbarToggle<CR>
let g:tagbar_width = 25

Plug 'vim-scripts/a.vim'
let g:A_Binding = '<Leader>'

Plug 'tpope/vim-commentary'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mileszs/ack.vim'

Plug 'easymotion/vim-easymotion'
nmap ss <Plug>(easymotion-s2)

Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" lightline
"let g:lightline = {
	      \ 'colorscheme': 'gruvbox',
      \ 'active': {
	      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'alpercent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'tabline': {
	      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
	      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
	      \   'buffers': 'tabsel'
      \ },
      \ 'separator': {'left': ' ', 'right': ' '},
      \ 'subseparator': {'left': ' ', 'right': ' '}
      \ }all
" bufferline
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#icon_position = 'right'
let g:lightline#bufferline#show_number = 3

let g:lightline#bufferline#number_map = {
			\ 0: '⁰', 1: '¹ ', 2: '² ', 3: '³ ', 4: '⁴ ',
			\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

function LightlineBufferlineFilter(buffer)
	  return getbufvar(a:buffer, '&buftype') !=# 'terminal'
  endfunction
  let g:lightline#bufferline#buffer_filter = "LightlineBufferlineFilter"

call plug#end()
