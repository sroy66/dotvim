" Taglist configuration
function conf#taglist#init()
  let Tlist_Show_One_File = 1
  let Tlist_WinWidth = 40
  let Tlist_Use_Right_Window = 1
  let Tlist_Enable_Fold_Column = 0
  let Tlist_Exit_OnlyWindow = 1
  let Tlist_Use_SingleClick = 1
  let Tlist_Inc_Winwidth = 0

  let tlist_vala_settings='c#;d:macro;t:typedef;n:namespace;c:class;'.
    \ 'E:event;g:enum;s:struct;i:interface;'.
    \ 'p:properties;m:method'
endfunction
