set nocompatible
filetype plugin on
syntax on
set et
set nu
set nuw=6
set so=2 

" Needed to make wombat256 work on terminals
set t_Co=256
colorscheme wombat256

set nobackup
set guioptions=e
set guifont=Andale\ Mono\ 8

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set completefunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

set ts=2
set shiftwidth=2
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat

" Use F8 for creating new tags file.
map <F8> :!/usr/bin/ctags -R --c-kinds=+px --c++-kinds=+px --fields=+iaS --extra=+q .<CR>

set autowrite
set autowriteall

inoremap <Nul> <C-x><C-o>

set grepprg=ack-grep
set grepformat=%f:%l:%m

set statusline=%F%m%r%h%w\ [%p%%]\ [%v]\ 
set laststatus=2
set clipboard+=unnamed

" Always use very magic mode for searches
nnoremap / /\v
vnoremap / /\v

" Search settings
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Use TextMate style
set listchars=tab:▸\ ,eol:¬

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

