" Normal mode
let s:N1 = [ '#ffffff' , '#444444' , 15  , 238 ]
let s:N2 = [ '#ffffff' , '#808080' , 15  , 244 ]
let s:N3 = [ '#000000' , '#bcbcbc' , 232 , 250 ]

" Insert mode
let s:I1 = [ '#ffffff' , '#00afff' , 16  , 39  ]
let s:I2 = [ '#ffffff' , '#808080' , 15  , 244 ]
let s:I3 = [ '#000000' , '#bcbcbc' , 232 , 250 ]

" Visual mode
let s:V1 = [ '#121212' , '#ff5f00' , 233 , 202 ]
let s:V2 = [ '#ffffff' , '#808080' , 15  , 244 ]
let s:V3 = [ '#000000' , '#bcbcbc' , 232 , 250 ]

" Replace mode
let s:R1 = [ '#ffffff' , '#ff0000' , 15  , 196 ]
let s:R2 = [ '#ffffff' , '#808080' , 15  , 244 ]
let s:R3 = [ '#000000' , '#bcbcbc' , 232 , 250 ]

let g:airline#themes#drjova#palette = {}
let g:airline#themes#drjova#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#drjova#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#drjova#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#drjova#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Normal modified mode
let g:airline#themes#drjova#palette.inactive_modified = {
    \ 'airline_c': [ '#ffffff' , '#80000' , 15 , 238, '' ]
    \  }

" Set modified color
let g:airline#themes#drjova#palette.normal_modified = g:airline#themes#drjova#palette.inactive_modified
let g:airline#themes#drjova#palette.visual_modified = g:airline#themes#drjova#palette.inactive_modified
let g:airline#themes#drjova#palette.insert_modified = g:airline#themes#drjova#palette.inactive_modified
let g:airline#themes#drjova#palette.replace_modified = g:airline#themes#drjova#palette.inactive_modified


" Set paste color
let g:airline#themes#drjova#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0] , '#d78700' , s:I1[2] , 172 , '' ],
      \ }

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#606060' , 247 , 241 ]
let s:IN2 = [ '#ffffff' , '#121212' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#drjova#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ '#ffffff' , '#444444' , 15  , 238 ]
let s:CP2 = [ '#ffffff' , '#808080' , 15  , 244 ]
let s:CP3 = [ '#080808' , '#bcbcbc' , 232 , 250 ]

let g:airline#themes#drjova#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#drjova#palette.tabline = {
      \ 'airline_tab':     [ '#ffffff' , '#444444' ,  15  , 238  , '' ],
      \ 'airline_tabsel':  [ '#ffffff' , '#808080' ,  15  , 244  , '' ],
      \ 'airline_tabtype': [ '#000000' , '#bcbcbc' ,  232 , 250  , '' ],
      \ 'airline_tabfill': [ '#ffffff' , '#080808' ,  15  , 232  , '' ],
      \ 'airline_tabmod':  [ '#ffffff' , '#870000' ,  15  , 88   , '' ]
      \ }
