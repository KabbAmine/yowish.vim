" Creation     : 2016-03-19
" Modification : 2016-03-20

" Color palette {{{1
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
