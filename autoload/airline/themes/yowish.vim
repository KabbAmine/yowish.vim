" Creation     : 2015-01-12
" Modification : 2016-01-11

" Colors[hex, term256] {{{1
let s:color = {
			\ 'background'      : ['#222222','235'],
			\ 'backgroundDark'  : ['#0e0e0e','232'],
			\ 'backgroundLight' : ['#393939','236'],
			\ 'comment'         : ['#6e6e6e','242'],
			\ 'green'           : ['#2acf2a','40'],
			\ 'lightBlue'       : ['#6699cc','67'],
			\ 'lightGreen'      : ['#99cc99','108'],
			\ 'lightRed'        : ['#f2777a','203'],
			\ 'lightViolet'     : ['#d09cea','171'],
			\ 'lightYellow'     : ['#ffcc66','222'],
			\ 'red'             : ['#f01d22','160'],
			\ 'selected'        : ['#373b41','234'],
			\ 'text'            : ['#cbcbcb','251'],
			\ 'textDark'        : ['#bebebe','249'],
			\ 'textExtraDark'   : ['#8c8c8c','244'],
			\ 'textLight'       : ['#ebebeb','255'],
			\ 'yellow'          : ['#ffbe3c','215'],
			\ }
let s:color.columnBackground = s:color.background
let s:color.columnElements = s:color.comment
" 1}}}

" *********************
" Airline theme settings
" *********************

let g:airline#themes#yowish#palette = {}
" NORMAL mode {{{1
let g:airline#themes#yowish#palette.normal = airline#themes#generate_color_map(
			\ [s:color.yellow[0]        , s:color.backgroundLight[0] , s:color.yellow[1]        , s:color.backgroundLight[1]] ,
			\ [s:color.textExtraDark[0] , 'NONE'                     , s:color.textExtraDark[1] , 'NONE']                     ,
			\ [s:color.textDark[0]      , 'NONE'                     , s:color.textDark[1]      , 'NONE']                     ,
		\ )
let g:airline#themes#yowish#palette.normal_modified = {
			\ 'airline_c': [s:color.lightYellow[0], 'NONE', s:color.lightYellow[1], 'NONE', 'bold'],
		\ }
" INSERT mode {{{1
let g:airline#themes#yowish#palette.insert = airline#themes#generate_color_map(
			\ [s:color.backgroundDark[0] , s:color.yellow[0] , s:color.backgroundDark[1] , s:color.yellow[1]] ,
			\ [s:color.textExtraDark[0]  , 'NONE'            , s:color.textExtraDark[1]  , 'NONE']            ,
			\ [s:color.textDark[0]       , 'NONE'            , s:color.textDark[1]       , 'NONE']
		\ )
let g:airline#themes#yowish#palette.insert_modified = {
			\ 'airline_c': [s:color.yellow[0], 'NONE', s:color.yellow[1], 'NONE', 'bold'],
		\ }
let g:airline#themes#yowish#palette.insert_paste = {
			\ 'airline_a': [s:color.backgroundDark[0], s:color.yellow[0], s:color.backgroundDark[1], s:color.yellow[1], 'bold'],
		\ }
" REPLACE mode {{{1
let g:airline#themes#yowish#palette.replace = airline#themes#generate_color_map(
			\ [s:color.textLight[0]     , s:color.red[0] , s:color.textLight[1]     , s:color.red[1]] ,
			\ [s:color.textExtraDark[0] , 'NONE'         , s:color.textExtraDark[1] , 'NONE']         ,
			\ [s:color.textDark[0]      , 'NONE'         , s:color.textDark[1]      , 'NONE']
		\ )
let g:airline#themes#yowish#palette.replace_modified = {
			\ 'airline_c': [s:color.red[0], 'NONE', s:color.red[1], s:color.background[1], 'bold'] ,
			\ }
" VISUAL mode {{{1
let g:airline#themes#yowish#palette.visual = airline#themes#generate_color_map(
			\ [s:color.backgroundDark[0] , s:color.text[0] , s:color.backgroundDark[1] , s:color.text[1]] ,
			\ [s:color.textExtraDark[0]  , 'NONE'          , s:color.textExtraDark[1]  , 'NONE']          ,
			\ [s:color.textDark[0]       , 'NONE'          , s:color.textDark[1]       , 'NONE']          ,
		\ )
let g:airline#themes#yowish#palette.visual_modified = {
			\ 'airline_c': [s:color.textLight[0], 'NONE', s:color.textLight[1], 'NONE', 'bold'],
		\ }
" Inactive(s) window(s) {{{1
let g:airline#themes#yowish#palette.inactive = airline#themes#generate_color_map(
			\ [s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1] , ''] ,
			\ [s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1] , ''] ,
			\ [s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1] , '']
		\ )
let g:airline#themes#yowish#palette.inactive_modified = {
			\ 'airline_c': [s:color.textExtraDark[0], s:color.backgroundDark[0], s:color.textExtraDark[1], s:color.backgroundDark[1] , 'bold'],
		\ }
" Warningmsg {{{1
" Same for all modes
for s:m in ['normal', 'insert', 'visual', 'replace', 'normal_modified', 'insert_modified', 'insert_paste', 'visual_modified', 'replace_modified']
	let g:airline#themes#yowish#palette[s:m]['airline_warning'] =
				\ [s:color.backgroundDark[0], s:color.yellow[0], s:color.backgroundDark[1], s:color.yellow[1], 'bold']
endfor
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
			\ [s:color.textExtraDark[0] , 'NONE'                     , s:color.textExtraDark[1] , 'NONE'                     , ''    ] ,
			\ [s:color.text[0]          , s:color.backgroundLight[0] , s:color.text[1]          , s:color.backgroundLight[1] , ''    ] ,
			\ [s:color.yellow[0]        , 'NONE'                     , s:color.yellow[1]        , 'NONE'                     , 'bold']
		\ )
" 1}}}

" Cleaning {{{1
unlet s:color s:m
" 1}}}

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
