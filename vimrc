" Clear existing commands
autocmd!

call plug#begin('~/.vim/bundle')

Plug 'aklt/plantuml-syntax'
Plug 'alvan/vim-closetag'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'cespare/vim-toml'
Plug 'chikamichi/mediawiki.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi'
Plug 'davidhalter/jedi-vim'
Plug 'davidhalter/parso'
Plug 'digitaltoad/vim-jade'
Plug 'digitaltoad/vim-pug'
Plug 'editorconfig/editorconfig-plugin-tests'
Plug 'editorconfig/editorconfig-vim'
Plug 'epilande/vim-react-snippets'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'fholgado/minibufexpl.vim'
Plug 'flazz/vim-colorschemes'
Plug 'geoffjay/vim-dcs-snippets'
Plug 'honza/vim-snippets'
Plug 'IN3D/vim-raml'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jparise/vim-graphql'
Plug 'jpo/vim-railscasts-theme'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'jwhitley/vim-colors-solarized'
Plug 'kana/vim-metarw'
Plug 'kingbin/vim-arduino'
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/vim-metarw-etcd'
Plug 'mattn/webapi-vim'
Plug 'mgutz/vim-colors'
Plug 'morhetz/gruvbox'
Plug 'mxw/vim-jsx'
Plug 'nikvdp/ejs-syntax'
Plug 'pangloss/vim-javascript'
Plug 'peterhoeg/vim-qml'
Plug 'posva/vim-vue'
Plug 'PratikBhusal/vim-grip'
Plug 'previm/previm'
Plug 'rodjek/vim-puppet'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'rust-lang/rust.vim'
Plug 'sbl/scvim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deol.nvim'
Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim'
Plug 'stfl/meson.vim'
Plug 'tomtom/tlib_vim'
Plug 'toritori0318/vim-redmine'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-latex/vim-latex'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/gtk-vim-syntax'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/vim-mediawiki-editor'
Plug 'vim-syntastic/syntastic'
Plug 'wakatime/vim-wakatime'
Plug 'wavded/vim-stylus'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

"""Plug 'Valloric/YouCompleteMe'"""

" Load plugins
"call pathogen#infect()
"call pathogen#helptags()

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
call conf#tagbar#init()
call conf#ctrlp#init()
call conf#closetag#init()
call conf#nerdtree#init()
call conf#jedi#init()
call conf#redmine#init()
call conf#rust#init()
call conf#lsp#init()
call conf#supercollider#init()
call conf#previm#init()
call conf#taskwarrior#init()
call conf#powerline#init()

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
map <silent> ,V :source ~/.vim/vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>

"map <F4> :TlistToggle<CR>
nmap <F4> :TagbarToggle<CR>
map <F5> :NERDTree<CR>
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
:nmap \e :NERDTree<CR>
:nmap \r :NERDTreeRefreshRoot<CR>
:nmap \f :YcmCompleter FixIt<CR>
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>
:nmap ; :CtrlPBuffer<CR>

" Netrw Style Listing
let g:netrw_liststyle = 3

nnoremap <Leader><Leader> :TagbarToggle<CR><C-W>h<C-W>s:e .<CR><C-W>l:let g:netrw_chgwin=winnr()<CR><C-W>h
