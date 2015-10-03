" Creation     : 2015-01-12
" Modification : 2015-10-04

" Colors[hex, term256] {{{1
let s:color = {
			\ 'Background'       : ['#222222', '235'],
			\ 'BackgroundDark'   : ['#0e0e0e', '232'],
			\ 'BackgroundLight'  : ['#393939', '236'],
			\ 'Text'             : ['#cbcbcb', '251'],
			\ 'TextDark'         : ['#bebebe', '249'],
			\ 'TextExtraDark'    : ['#8c8c8c', '244'],
			\ 'TextLight'        : ['#ebebeb', '255'],
			\ 'Selected'         : ['#373B41', '234'],
			\ 'ColumnBackground' : ['#222222', '235'],
			\ 'ColumnElements'   : ['#6e6e6e', '242'],
			\ 'Comment'          : ['#6e6e6e', '242'],
			\ 'red'              : ['#f01d22', '160'],
			\ 'green'            : ['#2acf2a', '40'],
			\ 'yellow'           : ['#ffbe3c', '215'],
			\ 'lightRed'         : ['#f2777a', '203'],
			\ 'lightGreen'       : ['#99cc99', '108'],
			\ 'lightYellow'      : ['#ffcc66', '222'],
			\ 'lightBlue'        : ['#6699cc', '67'],
			\ 'lightViolet'      : ['#d09cea', '171']
			\ }
" 1}}}

" *********************
" Airline theme settings
" *********************

let g:airline#themes#yowish#palette = {}
" NORMAL mode {{{1
let s:N1   = [s:color.yellow[0]        , s:color.BackgroundLight[0] , s:color.yellow[1]        , s:color.BackgroundLight[1]]
let s:N2   = [s:color.TextExtraDark[0] , 'NONE'                     , s:color.TextExtraDark[1] , 'NONE']
let s:N3   = [s:color.TextDark[0]      , 'NONE'                     , s:color.TextDark[1]      , 'NONE']
let g:airline#themes#yowish#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#yowish#palette.normal_modified = {
			\ 'airline_c': [s:color.lightYellow[0], 'NONE', s:color.lightYellow[1], 'NONE', 'bold'] ,
			\ }
" INSERT mode {{{1
let s:I1   = [s:color.BackgroundDark[0] , s:color.yellow[0] , s:color.BackgroundDark[1] , s:color.yellow[1]]
let s:I2   = [s:color.TextExtraDark[0]  , 'NONE'            , s:color.TextExtraDark[1]  , 'NONE']
let s:I3   = [s:color.TextDark[0]       , 'NONE'            , s:color.TextDark[1]       , 'NONE']
let g:airline#themes#yowish#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#yowish#palette.insert_modified = {
			\ 'airline_c': [s:color.yellow[0], 'NONE', s:color.yellow[1], s:color.Background[1], 'bold'] ,
			\ }
let g:airline#themes#yowish#palette.insert_paste = {
			\ 'airline_a': [s:I1[0][0], s:color.yellow[0], s:I1[2][1], s:color.yellow[1], 'bold'] ,
			\ }
" REPLACE mode {{{1
let s:R1   = [s:color.TextLight[0]     , s:color.red[0] , s:color.TextLight[1]     , s:color.red[1]]
let s:R2   = [s:color.TextExtraDark[0] , 'NONE'   , s:color.TextExtraDark[1] , 'NONE']
let s:R3   = [s:color.TextDark[0]      , 'NONE'   , s:color.TextDark[1]      , 'NONE']
let g:airline#themes#yowish#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#yowish#palette.replace_modified = {
			\ 'airline_c': [s:color.red[0], 'NONE', s:color.red[1], s:color.Background[1], 'bold'] ,
			\ }
" VISUAL mode {{{1
let s:V1   = [s:color.BackgroundDark[0] , s:color.Text[0] , s:color.BackgroundDark[1] , s:color.Text[1]]
let s:V2   = [s:color.TextExtraDark[0]  , 'NONE'          , s:color.TextExtraDark[1]  , 'NONE']
let s:V3   = [s:color.TextDark[0]       , 'NONE'          , s:color.TextDark[1]       , 'NONE']
let g:airline#themes#yowish#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#yowish#palette.visual_modified = {
			\ 'airline_c': [s:color.TextLight[0], 'NONE', s:color.TextLight[1], 'NONE', 'bold'] ,
			\ }
" Inactive(s) window(s) {{{1
let s:IA1 = [s:color.BackgroundLight[0] , s:color.BackgroundDark[0] , s:color.BackgroundLight[1] , s:color.BackgroundDark[1] , '']
let s:IA2 = [s:color.BackgroundLight[0] , s:color.BackgroundDark[0] , s:color.BackgroundLight[1] , s:color.BackgroundDark[1] , '']
let s:IA3 = [s:color.BackgroundLight[0] , s:color.BackgroundDark[0] , s:color.BackgroundLight[1] , s:color.BackgroundDark[1] , '']
let g:airline#themes#yowish#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#yowish#palette.inactive_modified = {
			\ 'airline_c': [s:color.TextExtraDark[0], 'NONE', s:color.TextExtraDark[1], 'NONE' , 'bold'] ,
			\ }
" Accents {{{1
"	  Accents are used to give parts within a section a slightly different look or
"	  color. Here we are defining a "red" accent, which is used by the 'readonly'
"	  part by default. Only the foreground colors are specified, so the background
"	  colors are automatically extracted from the underlying section colors. What
"	  this means is that regardless of which section the part is defined in, it
"	  will be red instead of the section's foreground color. You can also have
"	  multiple parts with accents within a section.
let g:airline#themes#yowish#palette.accents = {
			\ 'red':  [s:color.red[0], '', s:color.red[1], '']
			\ }
" CtrlP plugin {{{1
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#yowish#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
			\ [s:color.TextExtraDark[0] , 'NONE'                     , s:color.TextExtraDark[1] , 'NONE'                     , ''    ]  ,
			\ [s:color.Text[0]          , s:color.BackgroundLight[0] , s:color.Text[1]          , s:color.BackgroundLight[1] , ''    ]  ,
			\ [s:color.yellow[0]        , 'NONE'                     , s:color.yellow[1]        , 'NONE'                     , 'bold'])
" 1}}}

" Cleaning {{{1
unlet s:color
" 1}}}

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
