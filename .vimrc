" enable sytax highlighting
syntax on

" show line numbers
set number

" set tabs to have 4 spaces
set tabstop=4

"indent when moving to the next line while writing code
set autoindent

"expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 paces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" access os clipboard
set clipboard=unnamed

" ----------------------------------------
" set some plugin for python develop env |
" ----------------------------------------
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' " fold code
Plugin 'vim-scripts/indentpython.vim' " indent for python
Plugin 'nvie/vim-flake8' " check pep8
Plugin 'scrooloose/syntastic' " check syntax
Plugin 'jnurmine/Zenburn' " color scheme
Plugin 'altercation/vim-colors-solarized' " color scheme for gui
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim' " super seach
Plugin 'tpope/vim-fugitive' " git command without close vim
Plugin 'scrooloose/nerdcommenter' " comment selected lines out
Plugin 'simple-pairs' " auto add end part of a pair like ()
Plugin 'Valloric/YouCompleteMe' " auto complete
Plugin 'aperezdc/vim-template' " new file templates
Plugin 'mfukar/robotframework-vim' " robotframework sytax on
Plugin 'mattn/emmet-vim' " for html and css

" add all your plugins must be added before the following line
call vundle#end()  " required
filetype plugin indent on " required
" nerd tree shortcut
map <leader>t :NERDTreeToggle<CR>

" to see the docstrings for folded code:
let g:SimpylFold_docstring_preview=1
" to set YouCompleteMe, close window after completion
let g:ycm_autoclose_preview_window_after_completion=1
" shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" set color scheme
if has ('gui-running')
    set background=light
    colorscheme zenburn
else 
    colorscheme zenburn
endif
" shortcut for scheme switch
call togglebg#map("<F5>")
" set nerdtree to hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in nerdtree

" split navigations
" ctrl + j move to the split below
" ctrl + k move to the split above
" ctrl + l move to the split right
" ctrl + h move to the split left
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with the spacebar
nnoremap <space> za

" utf-8 support
set encoding=utf-8

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" templates setting
let g:email = 'qilaidi@netease.com'
let g:username = 'Kernel'

" set groovy syntax
au BufNewFile,BufRead *.groovy setf groovy
if did_filetype()
    finish
endif
if getline(1) =~'^#!.*[/\\]groovy\>'
    setf groovy
endif

" set emmet for only html and css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" html自动补全
autocmd BufNewFile *  setlocal filetype=html
function! InsertHtmlTag()
	let pat = '\c<\w\+\s*\(\s\+\w\+\s*=\s*[''#$;,()."a-z0-9]\+\)*\s*>'
	normal! a>
	let save_cursor = getpos('.')
	let result = matchstr(getline(save_cursor[1]), pat)
	"if (search(pat, 'b', save_cursor[1]) && searchpair('<','','>','bn',0,  getline('.')) > 0)
	if (search(pat, 'b', save_cursor[1]))
		normal! lyiwf>
		normal! a</
		normal! p
		normal! a>
	endif
	:call cursor(save_cursor[1], save_cursor[2], save_cursor[3])
endfunction
inoremap > <ESC>:call InsertHtmlTag()<CR>a<CR><Esc>O
