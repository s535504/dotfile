"Some tips
"replace all :[range(1,$)]s/[cmp]/[rep]/g[c]
"turn heightlight :nohl
"redo <C-r> unundo
"~change case
":m+ move line
""ay yard to a reg

"Setting

syntax on " Color syntax
filetype plugin indent on " Filetype
color Tomorrow-Night-Bright	" Colorscheme

set backspace=start,eol,indent	" Backspcae
set smartindent " Autoindent
set number " Line number
set mouse=a " Use mouse
set clipboard=unnamed " Clipboard
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set fileencodings=utf8,big5,gbk,latin1 " set fileopentype
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set colorcolumn=100
set cursorline
set expandtab
set hlsearch
set ignorecase
set incsearch
set ruler
set shiftwidth=4
set showcmd
set tabpagemax=100
set tabstop=4

autocmd FileType python setlocal et sta sw=4 sts=4 cc=80 completeopt-=preview
autocmd FileType ruby setlocal et sta sw=2 sts=2
autocmd FileType html setlocal et sw=2 sts=2
autocmd FileType blade setlocal et sw=2 sts=2

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Run fils
autocmd filetype ruby nnoremap <C-c> :w <bar> exec '!ruby '.shellescape('%') <CR>
autocmd filetype haml nnoremap <C-c> :w <bar> exec '!haml '.shellescape('%').' %:r.html' <CR><CR>
autocmd filetype javascript nnoremap <C-c> :w <bar> exec '!nodejs '.shellescape('%') <CR>
autocmd filetype lisp nnoremap <C-c> :w <bar> exec '!clisp '.shellescape('%') <CR>
autocmd filetype shell nnoremap <C-c> :w <bar> exec '!bash '.shellescape('%') <CR>
autocmd filetype php nnoremap <C-c> :w <bar> exec '!php -f '.shellescape('%') <CR>
autocmd filetype python nnoremap <C-c> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <C-c> :w <bar> exec '!gcc -o %:r '.shellescape('%').' -O2 && ./%:r'<CR>
autocmd filetype cpp nnoremap <C-c> :w <bar> exec '!g++ -o %:r '.shellescape('%').' -std=c++11 -O2 && ./%:r'<CR>

"Keymap

nmap <C-a> ggVG
nmap <C-5> :set fileencoding=big5<CR>
nmap <C-8> :set fileencoding=utf8<CR>

" Plugins
" Vundle
"vim +PluginInstal +qall
""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting up Vundle - the vim plugin bundler     "
""""""""""""""""""""""""""""""""""""""""""""""""""
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim --depth 1
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'gmarik/Vundle.vim'
"Add your bundles here

Plugin 'Lokaltog/vim-powerline'

" Command Tool
"Plugin 'mileszs/ack.vim
"Plugin 'vim-scripts/cscope_plus.vim'

" Useful Tool
Plugin 'scrooloose/nerdtree' "ctrl+n
nmap <C-n> :NERDTreeToggle<CR>

Plugin 'fidian/hexmode' ":hexmode

Plugin 'kien/ctrlp.vim' "ctrl+p
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|swp|zip|7z|rar|gz|xz|apk|dmg|iso|jpg|png|pdf)$',
	\ }

Plugin 'majutsushi/tagbar' "quick function jump
nmap <C-t> :TagbarToggle<CR><C-w>l
"o open/close folder

" Powerful Editing
Plugin 'myusuf3/numbers.vim' "line number

Plugin 'vim-scripts/Auto-Pairs' "pair[]

Plugin 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)

Plugin 'tpope/vim-surround'
"ds delete
"cs[cur][ch] change
"Text              Command      New Text
"---------------   -------      -----------
"Hello w|orld!     ysiw)        Hello (world)!
"Hello w|orld!     csw)         Hello (world)!
"fo|o              ysiwt<html>  <html>foo</html>
"foo quu|x baz     yss"         "foo quux baz"
"foo quu|x baz     ySS"         "
"                                   foo quux baz
"                               "

Plugin 'ervandew/supertab' "tab

" CSS
Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'Shougo/neocomplcache.vim'

" For Python
Plugin 'davidhalter/jedi-vim'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting up Vundle - the vim plugin bundler end "
""""""""""""""""""""""""""""""""""""""""""""""""""
