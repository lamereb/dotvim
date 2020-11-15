" use Pathogen for adding plugins to ~/.vim/bundle
execute pathogen#infect()
execute pathogen#helptags()

syntax on

filetype indent on

" color/highlighting
set t_ut=""     "disable Vim's Background Color Erase (BCE) option for WSL: see https://github.com/microsoft/terminal/issues/832
set t_Co=256
colorscheme molokai  " synic molokai_dark
set hlsearch " for laptop
au BufNewFile,BufRead *.hbs set filetype=html
" remove work's Perl syntax-highlighting ReasonableParams as Error
highlight Error ctermbg=Black ctermfg=Yellow

set splitright  "force vsplit to open new buffer right of current
set splitbelow  "force split to open new buffer below current

" layout/formatting
set breakindent "wrapped lines will indent to line above
set breakindentopt=shift:2    "add a 2-space shift to above
set linebreak   "only wrap on 'breakat' chars ( ^I!@*-+;:,./?")

let g:html_indent_inctags="html,body,head,tbody,dd"
let g:html_indent_autotags="th,td,tr"
let mapleader=","

set tabstop=4 shiftwidth=4 expandtab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r   " stop automatic comment-insertion on next line
autocmd FileType cpp,javascript setlocal shiftwidth=2 tabstop=2
nmap <F7> :set wrap!<CR>

" tags/keyword-searching
set tags=./TAGS;/  "search recursively back for tags file
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :TlistToggle<CR>

" open list of tags
nmap <leader>s :ts<CR>
" move to next tag in list
nmap <leader>n :tn<CR>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" grep path for word under cursor
nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" misc
autocmd BufWritePre * :%s/\s\+$//e  " always trim trailing whitespace at work
" source /usr/local/etc/vimrc_files/reasonably_stable_mappings.vim
