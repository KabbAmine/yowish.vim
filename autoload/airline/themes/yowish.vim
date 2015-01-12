" Yowish airline theme.

" Creation     : 2015-01-12
" Modification : 2015-01-13
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

" *********************
" Colors
" *********************

let s:cBackground      = ['#222222' , 235]
let s:cBackgroundDark  = ['#0e0e0e' , 232]
let s:cBackgroundLight = ['#393939' , 236]
let s:cText            = ['#cbcbcb' , 251]
let s:cTextDark        = ['#bebebe' , 249]
let s:cTextExtraDark   = ['#8c8c8c' , 244]
let s:cTextLight       = ['#ebebeb' , 255]

let s:red              = ['#f01d22' , 160]
let s:green            = ['#2acf2a' , 40]
let s:yellow           = ['#ffbe3c' , 215]

let s:lightRed         = ['#f2777a' , 203]
let s:lightGreen       = ['#99cc99' , 108]
let s:lightYellow      = ['#ffcc66' , 222]
let s:lightBlue        = ['#6699cc' , 67]
let s:lightViolet      = ['#d09cea' , 171]

" *********************
" Airline theme settings
" *********************

let g:airline#themes#yowish#palette = {}

" NORMAL mode.
let s:N1   = [ s:yellow[0]         , 'NONE' , s:yellow[1]         , 'NONE']
let s:N2   = [ s:cTextExtraDark[0] , 'NONE' , s:cTextExtraDark[1] , 'NONE']
let s:N3   = [ s:cTextDark[0]      , 'NONE' , s:cTextDark[1]      , 'NONE'  , 'bold']
let g:airline#themes#yowish#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#yowish#palette.normal_modified = {
			\ 'airline_c': [ s:lightYellow[0] , 'NONE' , s:lightYellow[1] , 'NONE' , 'bold'     ] ,
			\ }

" INSERT mode.
let s:I1   = [ s:cBackgroundDark[0] , s:yellow[0] , s:cBackgroundDark[1] , s:yellow[1] ]
let s:I2   = [ s:cTextExtraDark[0]  , 'NONE'      , s:cTextExtraDark[1]  , 'NONE' ]
let s:I3   = [ s:cTextDark[0]       , 'NONE'      , s:cTextDark[1]       , 'NONE' ]
let g:airline#themes#yowish#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#yowish#palette.insert_modified = {
			\ 'airline_c': [s:yellow[0], 'NONE', s:yellow[1], s:cBackground[1], 'bold'] ,
			\ }
let g:airline#themes#yowish#palette.insert_paste = {
			\ 'airline_a': [ s:I1[0][0]   , s:yellow[0] , s:I1[2][1] , s:yellow[1]     , 'bold'     ] ,
			\ }

" REPLACE mode.
let s:R1   = [ s:cTextLight[0]     , s:red[0] , s:cTextLight[1]     , s:red[1] ]
let s:R2   = [ s:cTextExtraDark[0] , 'NONE'   , s:cTextExtraDark[1] , 'NONE' ]
let s:R3   = [ s:cTextDark[0]      , 'NONE'   , s:cTextDark[1]      , 'NONE' ]
let g:airline#themes#yowish#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#yowish#palette.replace_modified = {
			\ 'airline_c': [s:red[0], 'NONE', s:red[1], s:cBackground[1], 'bold'] ,
			\ }

" VISUAL mode.
let s:V1   = [ s:cBackgroundDark[0] , s:cText[0] , s:cBackgroundDark[1] , s:cText[1] ]
let s:V2   = [ s:cTextExtraDark[0]  , 'NONE'     , s:cTextExtraDark[1]  , 'NONE' ]
let s:V3   = [ s:cTextDark[0]       , 'NONE'     , s:cTextDark[1]       , 'NONE' ]
let g:airline#themes#yowish#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#yowish#palette.visual_modified = {
			\ 'airline_c': [s:cTextLight[0], 'NONE', s:cTextLight[1], 'NONE', 'bold'] ,
			\ }

" Inactive(s) window(s).
let s:IA1 = [ s:cBackgroundLight[0] , 'NONE' , s:cBackgroundLight[1] , 'NONE' , '' ]
let s:IA2 = [ s:cBackgroundLight[0] , 'NONE' , s:cBackgroundLight[1] , 'NONE' , '' ]
let s:IA3 = [ s:cBackgroundLight[0] , 'NONE' , s:cBackgroundLight[1] , 'NONE' , '' ]
let g:airline#themes#yowish#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#yowish#palette.inactive_modified = {
			\ 'airline_c': [ s:cTextExtraDark[0] , 'NONE' ,s:cTextExtraDark[1] , 'NONE' , 'bold' ] ,
			\ }

" Accents.
"	  Accents are used to give parts within a section a slightly different look or
"	  color. Here we are defining a "red" accent, which is used by the 'readonly'
"	  part by default. Only the foreground colors are specified, so the background
"	  colors are automatically extracted from the underlying section colors. What
"	  this means is that regardless of which section the part is defined in, it
"	  will be red instead of the section's foreground color. You can also have
"	  multiple parts with accents within a section.
let g:airline#themes#yowish#palette.accents = {
			\ 'red': [ s:red[0] , '' , s:red[1] , ''  ]
			\ }

" CtrlP plugin.
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#yowish#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
			\ [ s:cTextExtraDark[0] , 'NONE'                , s:cTextExtraDark[1] , 'NONE'                , ''     ]  ,
			\ [ s:cText[0]          , s:cBackgroundLight[0] , s:cText[1]          , s:cBackgroundLight[1] , ''     ]  ,
			\ [ s:yellow[0]         , 'NONE'                , s:yellow[1]         , 'NONE'                , 'bold' ])
