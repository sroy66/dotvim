" Clear existing commands
autocmd!

" Load plugins
call pathogen#infect()
call pathogen#helptags()

" Editor configuration
call conf#editor#defaults()
call conf#editor#colorscheme()
call conf#editor#columnwidth()
call conf#editor#indentation()

" Strip trailing whitespace on save
au BufWritePre * :%s/\s\+$//e

" Plugin configuration
call conf#statusbar#init()
call conf#syntastic#init()
call conf#autocomplete#init()
call conf#taglist#init()
call conf#ctrlp#init()
call conf#closetag#init()
call conf#nerdtree#init()
call conf#jedi#init()
call conf#lsp#init()
call conf#supercollider#init()
call conf#previm#init()

" Filetype configuration
call conf#filetypes#latex()
call conf#filetypes#markdown()
call conf#filetypes#text()
"call conf#filetypes#dotfiles()
call conf#filetypes#c()
call conf#filetypes#vala()
call conf#filetypes#xml()
call conf#filetypes#ruby()
call conf#filetypes#javascript()
call conf#filetypes#supp()
"call conf#filetypes#python()

" gitcommit specific
"autocmd Filetype gitcommit spell textwidth=72

"""
" key mappings, older versions of vim might need
"   C-v + C-m instead of <CR>
map ,v :sp ~/.vimrc<CR>
map <silent> ,V :source ~/.vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>

map <F4> :TlistToggle<CR>
map <F5> :NERDTreeTabsToggle<CR>
" map <F6> :call conf#util#MpdPause()<CR>
" map <F7> :call conf#util#MpdPlay()<CR>
map <F7> :call conf#util#DiffGetLocal()<CR>
" map <F8> :call conf#util#SaveCurrent()<CR>
" map <F9> :call conf#util#QuitAll()<CR>
map <F8> :make<CR>
map <F9> :call conf#util#EnableFolding()<CR>
map <F10> :call conf#util#DisableFolding()<CR>
"""
" C-s doesn't work in terminal mode
" map <silent> <C-S> :w<CR>
" imap <C-s> <C-o><C-s><CR>
"imap <C-v> <Esc><C-v>a
vmap <C-S-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
"nmap <C-S-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

"map <C-[> :resize +5<CR>
"map <C-]> :resize -5<CR>

"""
" some regular expressions to consider adding
" :%s/^\w*/\"\0\"/ => wrap first word in "
" :%s/\w*$/\"\0\"/ => wrap last word in "

"""
" Beautify JavaScript
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>

"""
" Ideas adapted from some genius at static.github.io/vim.html
:nmap \a Geoff Johnson, <geoff.jay@gmail.com><CR>
:nmap \c :CoVim start 14041 gjohn<CR>
:nmap \d <C-R>=strftime('%Y-%m-%d')<CR>
:nmap \e :NERDTreeToggle<CR>
:nmap \f :YcmCompleter FixIt<CR>
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>
:nmap ; :CtrlPBuffer<CR>
