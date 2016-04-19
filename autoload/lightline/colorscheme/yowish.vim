" Creation     : 2016-03-19
" Modification : 2016-04-19

" Get config & colors [hex, term256] {{{1
call yowish#SetConfig()
let s:color = g:yowish.colors
" 1}}}

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" NORMAL {{{1
let s:p.normal.left    = [
			\ [s:color.yellow[0]        , s:color.backgroundLight[0] , s:color.yellow[1]        , s:color.backgroundLight[1]  , 'bold'] ,
			\ [s:color.textExtraDark[0] , s:color.backgroundLight[0] , s:color.textExtraDark[1] , s:color.backgroundLight[1]] ,
			\ [s:color.text[0]          , s:color.backgroundLight[0] , s:color.text[1]          , s:color.backgroundLight[1]] ,
			\ ]
let s:p.normal.middle = [[s:color.textExtraDark[0] , s:color.backgroundLight[0] , s:color.textExtraDark[1] , s:color.backgroundLight[1]]]
let s:p.normal.right   = [[s:color.yellow[0]         , s:color.backgroundLight[0] , s:color.yellow[1]         , s:color.backgroundLight[1]]]
let s:p.normal.error   = [[s:color.textLight[0]      , s:color.red[0]             , s:color.textLight[1]      , s:color.red[1]               , 'bold']]
let s:p.normal.warning = [[s:color.backgroundDark[0] , s:color.yellow[0]          , s:color.backgroundDark[1] , s:color.yellow[1]            , 'bold']]
" INSERT {{{1
let s:p.insert.left  = [
			\ [s:color.backgroundDark[0] , s:color.yellow[0]          , s:color.backgroundDark[1] , s:color.yellow[1]           , 'bold'] ,
			\ [s:color.textExtraDark[0]  , s:color.backgroundLight[0] , s:color.textExtraDark[1]  , s:color.backgroundLight[1]] ,
			\ [s:color.text[0]           , s:color.backgroundLight[0] , s:color.text[1]           , s:color.backgroundLight[1]] ,
			\ ]
let s:p.insert.right = [[s:color.backgroundDark[0] , s:color.yellow[0] , s:color.backgroundDark[1] , s:color.yellow[1]]]
" REPLACE {{{1
let s:p.replace.left  = [
			\ [s:color.textLight[0]     , s:color.red[0]             , s:color.textLight[1]     , s:color.red[1]              , 'bold'] ,
			\ [s:color.textExtraDark[0] , s:color.backgroundLight[0] , s:color.textExtraDark[1] , s:color.backgroundLight[1]] ,
			\ [s:color.text[0]          , s:color.backgroundLight[0] , s:color.text[1]          , s:color.backgroundLight[1]] ,
			\ ]
let s:p.replace.right = [[s:color.textLight[0], s:color.red[0], s:color.textLight[1], s:color.red[1]]]
" VISUAL {{{1
let s:p.visual.left  = [
			\ [s:color.backgroundDark[0] , s:color.lightGreen[0]      , s:color.backgroundDark[1] , s:color.lightGreen[1]       , 'bold'] ,
			\ [s:color.textExtraDark[0]  , s:color.backgroundLight[0] , s:color.textExtraDark[1]  , s:color.backgroundLight[1]] ,
			\ [s:color.text[0]           , s:color.backgroundLight[0] , s:color.text[1]           , s:color.backgroundLight[1]] ,
			\ ]
let s:p.visual.right = [[s:color.backgroundDark[0], s:color.lightGreen[0], s:color.backgroundDark[1], s:color.lightGreen[1]]]
" Tabline {{{1
let s:p.tabline.left   = copy(s:p.normal.middle)
let s:p.tabline.middle = copy(s:p.normal.middle)
let s:p.tabline.tabsel = copy(s:p.insert.right)
" Inactive {{{1
let s:p.inactive.left   = [[s:color.background[0]      , s:color.backgroundDark[0] , s:color.background[1]      , s:color.backgroundDark[1]]]
let s:p.inactive.middle = [[s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1]]]
let s:p.inactive.right  = [[s:color.backgroundLight[0] , s:color.backgroundDark[0] , s:color.backgroundLight[1] , s:color.backgroundDark[1]]]
" 1}}}

let g:lightline#colorscheme#yowish#palette = s:p

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
