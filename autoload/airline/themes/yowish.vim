" Yowish airline theme.

" Creation     : 2015-01-12
" Modification : 2015-01-12
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

" *********************
" Colors
" *********************

let s:cBackground = '#222222'
let s:cBackgroundDark = '#0e0e0e'
let s:cBackgroundLight = '#393939'
let s:cText = '#cbcbcb'
let s:cTextDark = '#bebebe'
let s:cTextExtraDark = '#8c8c8c'
let s:cTextLight = '#ebebeb'

let s:red = '#f01d22'
let s:green = '#2acf2a'
let s:yellow = '#ffbe3c'

let s:lightRed = '#f2777a'
let s:lightGreen = '#99cc99'
let s:lightYellow = '#ffcc66'
let s:lightBlue = '#6699cc'
let s:lightViolet = '#d09cea'


" *********************
" Airline theme settings
" *********************

let g:airline#themes#yowish#palette = {}

" NORMAL mode.
let s:N1   = [ s:yellow , 'NONE', 255 , 238, 'NONE']
let s:N2   = [ s:cTextExtraDark , 'NONE', 17  , 190, 'NONE']
let s:N3   = [ s:cTextDark , 'NONE' , 85  , 234, 'bold']
let g:airline#themes#yowish#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#yowish#palette.normal_modified = {
			\ 'airline_c': [ s:lightYellow, 'NONE', 255     , 53      , 'bold'     ] ,
			\ }

" INSERT mode.
let s:I1   = [ s:cBackgroundDark, s:yellow, 17  , 190 ]
let s:I2   = [ s:cTextExtraDark , 'NONE', 255 , 238 ]
let s:I3   = [ s:cTextDark , 'NONE' , 85  , 234 ]
let g:airline#themes#yowish#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#yowish#palette.insert_modified = {
			\ 'airline_c': [s:yellow, 'NONE', 255, 53, 'bold'] ,
			\ }
let g:airline#themes#yowish#palette.insert_paste = {
			\ 'airline_a': [ s:I1[0]   , s:yellow , s:I1[2] , 172     , 'bold'     ] ,
			\ }

" REPLACE mode.
let s:R1   = [ s:cTextLight, s:red, 17  , 190 ]
let s:R2   = [ s:cTextExtraDark , 'NONE', 255 , 238 ]
let s:R3   = [ s:cTextDark , 'NONE' , 85  , 234 ]
let g:airline#themes#yowish#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#yowish#palette.replace_modified = {
			\ 'airline_c': [s:red, 'NONE', 255, 53, 'bold'] ,
			\ }

" VISUAL mode.
let s:V1   = [ s:cBackgroundDark, s:cText, 17  , 190 ]
let s:V2   = [ s:cTextExtraDark , 'NONE', 255 , 238 ]
let s:V3   = [ s:cTextDark , 'NONE' , 85  , 234 ]
let g:airline#themes#yowish#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#yowish#palette.visual_modified = {
			\ 'airline_c': [s:cTextLight, 'NONE', 255, 53, 'bold'] ,
			\ }

" Inactive(s) window(s).
let s:IA1 = [ s:cBackgroundLight, 'NONE' , 239 , 234 , '' ]
let s:IA2 = [ s:cBackgroundLight , 'NONE' , 239 , 235 , '' ]
let s:IA3 = [ s:cBackgroundLight , 'NONE' , 239 , 236 , '' ]
let g:airline#themes#yowish#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#yowish#palette.inactive_modified = {
			\ 'airline_c': [ s:cTextExtraDark , 'NONE' , 97 , '' , 'bold' ] ,
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
			\ 'red': [ s:red , '' , 160 , ''  ]
			\ }

" CtrlP plugin.
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#yowish#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
			\ [ s:cTextExtraDark , 'NONE' , 189 , 55  , ''     ],
			\ [ s:cText , s:cBackgroundLight , 231 , 98  , ''     ],
			\ [ s:yellow , 'NONE', 55  , 231 , 'bold' ])
