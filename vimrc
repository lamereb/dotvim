" 5/13/17 - Pathogen, for adding plugins to ~/.vim/bundle
execute pathogen#infect()
execute pathogen#helptags()

filetype indent on

set splitright  "force vsplit to open new buffer right of current
set splitbelow  "force split to open new buffer below current

let g:html_indent_inctags="html,body,head,tbody,dd"
let g:html_indent_autotags="th,td,tr"
let mapleader=","

set tabstop=4 shiftwidth=4 expandtab

" 5/13/17 - line below stops auto comment-insertion on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r
" 6/2/17 - work uses 2 spaces for c++
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2

set t_Co=256
" colorscheme synic
" colorscheme molokai_dark
colorscheme molokai

" 5/13/17 - to get rid of Perl syntax-highlighting ReasonableParams
"     at work  as Error's
highlight Error ctermbg=Black ctermfg=Yellow

" 5/13/17 - to grep path for word under cursor
nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :TlistToggle<CR>

" 6/2/17 - move to next tag in list
nmap <leader>n :tn<CR> 
" 6/2/17 - open list of tags
nmap <leader>s :ts<CR>

set tags=./TAGS;/  " 5/13/17 - to search recursively back for tags file

" laptop
set hlsearch
au BufNewFile,BufRead *.hbs set filetype=html

execute "set <A-]>=\e]"
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" always trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" source /usr/local/etc/vimrc_files/reasonably_stable_mappings.vim
