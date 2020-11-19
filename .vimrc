
" ===== [ General ] ================
syntax on           " of course
set noerrorbells    " turn off crash sound on the bottom
set number          " line numbers
set wildmenu        " display all matching files when tab completed
set path+=**        " Search down into subfolders



" ===== [ Mapleader ] ================
let mapleader = " "



" ===== [ Indentation ] ================
set expandtab       " tabs are spaces
set smartindent     " indent for me
set autoindent      " indentation of the next line should be the same as this
set tabstop=4       " Tab indentation levels every four columns
set softtabstop=4
set shiftwidth=4

" Do not remove indentation for comments
set cindent cinkeys-=0#



" ===== [ Basic movement and commands ] ================
" Exit insert mode
inoremap jh <Esc>

" Y yanks to the end of the line instead of whole line
nnoremap Y y$

" make } move to the next blank space, but the cursor in the middle of the
" screen
nnoremap { {zz
nnoremap } }zz


" ===== [ Search and replace ] ================
set smartcase       " case sensitive search
" highlighting
set incsearch
set hlsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" Shortcut for :%s/<CURSOR_HERE>/g
nnoremap <leader>s :%s//g<LEFT><LEFT>

" remove trailing whitespace (substitute with nothing)
nnoremap <silent> <leader>w :%s/\s\+$//g<CR>



" ===== [ Relative numbers ] ================
" autocmd InsertEnter * :set relativenumber
" autocmd InsertLeave * :set norelativenumber
set relativenumber



" ===== [ Split navigations ] ================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" ===== [ Enable folding ] ================
set foldmethod=indent
set foldlevel=99
set foldmethod=indent



" ===== [ Basic visual ] ================
set encoding=utf-8
set background=dark

" Disable bold font
set t_md=

" Colors
highlight Repeat ctermfg=216
highlight Boolean ctermfg=216
highlight Conditional ctermfg=216
highlight Label ctermfg=216
highlight Keyword ctermfg=216
highlight Exception ctermfg=216
highlight Define ctermfg=216
highlight LineNr ctermfg=grey
highlight Number ctermfg=119
highlight Float ctermfg=119
highlight Include ctermfg=215   " Highlight import

" Enable folding with the spacebar
nnoremap <leader><space> za



" ===== [ Highlight bad practice ] ================
""" 80 char column
highlight ColorColumn ctermbg=0 guibg=lightgrey
" only highlight when I'm going over the 80 char line
autocmd WinEnter * silent! call matchadd('ColorColumn', '\%81v', 100)

" highlight InvisibleSpaces ctermfg=Black ctermbg=Black
" from Damian Conway
" call matchadd('InvisibleSpaces', '\S\@<=\s\+\%#\ze\s*$')

" My own
" call matchadd('InvisibleSpaces', '\s\+$')   " match trailing whitespace
" call matchadd('InvisibleSpaces', '\t')      " match tab character

" I imagine this is more efficient as it is built in
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list



" ===== [ Display the file tree for the current dir ] ================
nnoremap <leader>o :edit .<CR>
" nnoremap <leader>O :vsplit<CR> :vertical resize 35<CR> :edit .<CR>
nnoremap <leader>O :below split<CR> :edit .<CR>
let g:netrw_banner=0        " disable banner
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view


" ===== [ Comments ] ================
" leader cc to comment line
" leader cf convert #Hello to # hello (space)
"       and  # Hello to # hello (lowercase)
" Python
autocmd Filetype    python,sh,conf
    \   nnoremap <buffer> <silent> <leader>cc @='I#<space><C-o>j<C-o>'<CR><Esc><Esc> |
    \   nnoremap <buffer> <leader>cf :%s/\v# ([A-Z])\|#([a-zA-Z0-9])/# \L\1\2\e/gc<CR>
" C++
autocmd Filetype    cpp
    \   nnoremap <buffer> <silent> <leader>cc @='I//<space><C-o>j<C-o>'<CR><Esc><Esc> |
    \   nnoremap <buffer> <leader>cf :%s/\v\/\/ ([A-Z])\|\/\/([a-zA-Z0-9])/\/\/ \L\1\2\e/gc<CR>
" vim
autocmd Filetype    vim
    \   nnoremap <buffer> <silent> <leader>cc @='I"<space><C-o>j<C-o>'<CR><Esc><Esc> |
    \   nnoremap <buffer> <leader>cf :%s/\v" ([A-Z])\|"([a-zA-Z0-9])/" \L\1\2\e/gc<CR>

" Remove comments
nnoremap <silent> <leader>cu @='^dawj'<CR>

" Do not make the new line after a comment also a comment
set formatoptions-=o | set formatoptions-=r



" ===== [ Autocompletion ] ================
" use the popup menu for completion also when there is only one match
set completeopt=menuone

"" These do not work
" set wildignorecase  " Case-insensitive completions
" set infercase       " Adjust completions to match case



" ===== [ Visual ] ================
"" For text files
autocmd Filetype    text
    \   setlocal textwidth=79



" ===== [ Snippets ] ================
" Python
autocmd Filetype    python
 \ nnoremap <buffer> ,d :read $HOME/Documents/Configuration/.vim/skeleton/docstring.py<CR>=7j7j<l8kf(lyi(4j$xxx"0p |
 \ nnoremap <buffer> ,f :read $HOME/Documents/Configuration/.vim/skeleton/for.py<CR>=l$2hi|
 \ nnoremap <buffer> ,i :-1read $HOME/Documents/Configuration/.vim/skeleton/import.py<CR>=jj|
 \ nnoremap <buffer> ,c :-1read $HOME/Documents/Configuration/.vim/skeleton/continue.py<CR>=l

" C++
autocmd Filetype    cpp
 \ nnoremap <buffer> ,f :read $HOME/Documents/Configuration/.vim/skeleton/for.cpp<CR>=j^f<a|
 \ nnoremap <buffer> ,i :read $HOME/Documents/Configuration/.vim/skeleton/include.cpp<CR>=l$i



" ===== [ Plugins ] ================
call plug#begin('~/.vim/plugged')
" Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'https://tpope.io/vim/surround.git'
call plug#end()

" Youcompleteme fixes
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ }


" Make /g the default on :s/.../../ commands (use /gg to disable)
" set gdefault  " doesn't work
