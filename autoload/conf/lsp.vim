" LSP configuration
function conf#lsp#init()
  set hidden
  set signcolumn=yes

  let g:LanguageClient_autoStart = 0
  nnoremap <leader>lcs :LanguageClientStart<CR>

  " if you want it to turn on automatically
  " let g:LanguageClient_autoStart = 1

  " Add this for typescript:
  "\ 'javascript': ['javascript-typescript-stdio'],

  let g:LanguageClient_serverCommands = {
      \ 'python': ['pyls'],
      \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
      \ 'go': ['go-langserver'],
      \ }

  let $RUST_BACKTRACE = 1
  let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
  let g:LanguageClient_loggingLevel = 'INFO'
  let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'

  noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
  noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
  noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
  noremap <silent> S :call LanugageClient_textDocument_documentSymbol()<CR>
endfunction
