" Creation     : 2016-01-08
" Modification : 2016-04-19

" Get config & colors [hex, term256] {{{1
call yowish#SetConfig()
let s:color = g:yowish.colors
" 1}}}

" *********************
" Airline theme settings
" *********************

let g:airline#themes#yowishU#palette = {}
" NORMAL mode {{{1
let g:airline#themes#yowishU#palette.normal = airline#themes#generate_color_map(
			\ [s:color.yellow[0]        , s:color.backgroundLight[0] , s:color.yellow[1]        , s:color.backgroundLight[1]],
			\ [s:color.textExtraDark[0] , s:color.backgroundLight[0] , s:color.textExtraDark[1] , s:color.backgroundLight[1]],
			\ [s:color.textDark[0]      , s:color.backgroundLight[0] , s:color.textDark[1]      , s:color.backgroundLight[1]]
		\ )
let g:airline#themes#yowishU#palette.normal_modified = {
			\ 'airline_c': [s:color.lightYellow[0], s:color.backgroundLight[0], s:color.lightYellow[1], s:color.backgroundLight[1], 'bold'] ,
		\ }
" INSERT mode {{{1
let g:airline#themes#yowishU#palette.insert = airline#themes#generate_color_map(
			\ [s:color.backgroundDark[0] , s:color.yellow[0]          , s:color.backgroundDark[1] , s:color.yellow[1]],
			\ [s:color.textExtraDark[0]  , s:color.backgroundLight[0] , s:color.textExtraDark[1]  , s:color.backgroundLight[1]],
			\ [s:color.textDark[0]       , s:color.backgroundLight[0] , s:color.textDark[1]       , s:color.backgroundLight[1]],
		\ )
let g:airline#themes#yowishU#palette.insert_modified = {
			\ 'airline_c': [s:color.yellow[0], s:color.backgroundLight[0], s:color.yellow[1], s:color.backgroundLight[1], 'bold'] ,
		\ }
let g:airline#themes#yowishU#palette.insert_paste = {
			\ 'airline_a': [s:color.backgroundDark[0] , s:color.yellow[0], s:color.backgroundDark[1], s:color.yellow[1], 'bold'] ,
		\ }
" REPLACE mode {{{1
let g:airline#themes#yowishU#palette.replace = airline#themes#generate_color_map(
			\ [s:color.textLight[0]     , s:color.red[0]             , s:color.textLight[1]     , s:color.red[1]],
			\ [s:color.textExtraDark[0] , s:color.backgroundLight[0] , s:color.textExtraDark[1] , s:color.backgroundLight[1]],
			\ [s:color.textDark[0]      , s:color.backgroundLight[0] , s:color.textDark[1]      , s:color.backgroundLight[1]],
		\ )
let g:airline#themes#yowishU#palette.replace_modified = {
			\ 'airline_c': [s:color.red[0], s:color.backgroundLight[0], s:color.red[1], s:color.backgroundLight[1], 'bold'] ,
		\ }
" VISUAL mode {{{1
let g:airline#themes#yowishU#palette.visual = airline#themes#generate_color_map(
			\ [s:color.backgroundDark[0] , s:color.lightGreen[0]           , s:color.backgroundDark[1] , s:color.lightGreen[1]],
			\ [s:color.textExtraDark[0]  , s:color.backgroundLight[0] , s:color.textExtraDark[1]  , s:color.backgroundLight[1]],
			\ [s:color.textDark[0]       , s:color.backgroundLight[0] , s:color.textDark[1]       , s:color.backgroundLight[1]],
		\ )
let g:airline#themes#yowishU#palette.visual_modified = {
			\ 'airline_c': [s:color.lightGreen[0], s:color.backgroundLight[0], s:color.lightGreen[1], s:color.backgroundLight[1], 'bold'] ,
		\ }
" Inactive(s) window(s) {{{1
let g:airline#themes#yowishU#palette.inactive = airline#themes#generate_color_map(
			\ [s:color.background[0]      , s:color.backgroundDark[0] , s:color.background[1]      , s:color.backgroundDark[1] , ''],
			\ [s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1] , ''],
			\ [s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1] , ''],
		\ )
let g:airline#themes#yowishU#palette.inactive_modified = {
			\ 'airline_c': [s:color.textExtraDark[0], s:color.backgroundDark[0], s:color.textExtraDark[1], s:color.backgroundDark[1] , 'bold'] ,
		\ }
" Messages {{{1
let s:modes = ['normal', 'insert', 'visual', 'replace', 'normal_modified', 'insert_modified', 'insert_paste', 'visual_modified', 'replace_modified']
"""""" Warning {{{2
for s:m in s:modes
	let g:airline#themes#yowishU#palette[s:m]['airline_warning'] =
				\ [s:color.backgroundDark[0], s:color.yellow[0], s:color.backgroundDark[1], s:color.yellow[1], 'bold']
endfor
"""""" Error {{{2
for s:m in s:modes
	let g:airline#themes#yowishU#palette[s:m]['airline_error'] =
				\ [s:color.textLight[0], s:color.red[0], s:color.textLight[1], s:color.red[1], 'bold']
endfor " 2}}}
" Accents {{{1
let g:airline#themes#yowishU#palette.accents = {
			\ 'red':  [s:color.red[0], '', s:color.red[1], '']
		\ }
" CtrlP plugin {{{1
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#yowishU#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
			\ [s:color.textExtraDark[0] , 'NONE'                     , s:color.textExtraDark[1] , 'NONE'                     , ''    ]  ,
			\ [s:color.text[0]          , s:color.backgroundLight[0] , s:color.text[1]          , s:color.backgroundLight[1] , ''    ]  ,
			\ [s:color.yellow[0]        , 'NONE'                     , s:color.yellow[1]        , 'NONE'                     , 'bold']
		\ )
" 1}}}

" Cleaning {{{1
unlet s:color s:m
" 1}}}

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
