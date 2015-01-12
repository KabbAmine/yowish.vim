" Yowish colorscheme.
" Version: 0.3

" Creation     : 2015-01-09
" Modification : 2015-01-13
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "yowish"

" *********************
" Functions
" *********************

function! s:Hi(groupName, ...)
	" Idea from http://stackoverflow.com/a/2213233
	
	let l:params = ['guibg', 'guifg', 'gui', 'ctermbg', 'ctermfg', 'cterm']
	let l:command = 'hi ' . a:groupName
	if (len(a:000) < 1) || (len(a:000) > (len(l:params)))
		echoerr "Arguments passed are wrong"
	else
		for i in range(0,len(a:000)-1)
			let l:command .= ' ' . l:params[i] . '=' . a:000[i]
		endfor
		exe l:command
	endif
endfunc

" *********************
" Variables
" *********************

" Colors[hex, term256] {
let s:cBackground       = ['#222222', '235']
let s:cBackgroundDark   = ['#0e0e0e', '232']
let s:cBackgroundLight  = ['#393939', '236']
let s:cText             = ['#cbcbcb', '251']
let s:cTextDark         = ['#bebebe', '249']
let s:cTextExtraDark    = ['#8c8c8c', '244']
let s:cTextLight        = ['#ebebeb', '255']
let s:cSelected         = ['#373B41', '234']
let s:cColumnBackground = s:cBackground
let s:cColumnElements   = ['#6e6e6e', '242']

let s:cComment          = ['#6e6e6e', '242']

let s:red               = ['#f01d22', '160']
let s:green             = ['#2acf2a', '40']
let s:yellow            = ['#ffbe3c', '215']

let s:lightRed          = ['#f2777a', '203']
let s:lightGreen        = ['#99cc99', '108']
let s:lightYellow       = ['#ffcc66', '222']
let s:lightBlue         = ['#6699cc', '67']
let s:lightViolet       = ['#d09cea', '171']
" }

" *********************
" Highlighting
" *********************

" Default {
call s:Hi('Comment'      , 'NONE'                 , s:cComment[0]         , 'NONE'      , 'NONE'                 , s:cComment[1]         , 'NONE')
call s:Hi('Conceal'      , 'NONE'                 , s:cBackgroundLight[0] , 'NONE'      , 'NONE'                 , s:cBackgroundLight[1] , 'NONE')
call s:Hi('Constant'     , 'NONE'                 , s:lightRed[0]         , 'NONE'      , 'NONE'                 , s:lightRed[1]         , 'NONE')
call s:Hi('CursorLineNr' , 'NONE'                 , s:lightYellow[0]      , 'NONE'      , 'NONE'                 , s:lightYellow[1]      , 'NONE')
call s:Hi('CursorLine'   , s:cBackgroundLight[0]  , 'NONE'                , 'NONE'      , s:cBackgroundLight[1]  , 'NONE'                , 'NONE')
call s:Hi('Cursor'       , s:cText[0]             , s:cBackgroundDark[0]  , 'NONE'      , s:cText[1]             , s:cBackgroundDark[1]  , 'NONE')
call s:Hi('DiffAdd'      , 'NONE'                 , s:green[0]            , 'NONE'      , 'NONE'                 , s:green[1]            , 'NONE')
call s:Hi('DiffChange'   , 'NONE'                 , s:yellow[0]           , 'NONE'      , 'NONE'                 , s:yellow[1]           , 'NONE')
call s:Hi('DiffDelete'   , 'NONE'                 , s:red[0]              , 'NONE'      , 'NONE'                 , s:red[1]              , 'NONE')
call s:Hi('DiffText'     , 'NONE'                 , s:cTextDark[0]        , 'NONE'      , 'NONE'                 , s:cTextDark[1]        , 'NONE')
call s:Hi('Directory'    , 'NONE'                 , s:cTextDark[0]        , 'NONE'      , 'NONE'                 , s:cTextDark[1]        , 'NONE')
call s:Hi('ErrorMsg'     , s:red[0]               , s:cText[0]            , 'bold'      , s:red[1]               , s:cText[1]            , 'bold')
call s:Hi('Error'        , 'NONE'                 , s:red[0]              , 'bold'      , 'NONE'                 , s:red[1]              , 'bold')
call s:Hi('FoldColumn'   , s:cColumnBackground[0] , s:cColumnElements[0]  , 'NONE'      , s:cColumnBackground[1] , s:cColumnElements[1]  , 'NONE')
call s:Hi('Identifier'   , 'NONE'                 , s:lightBlue[0]        , 'NONE'      , 'NONE'                 , s:lightBlue[1]        , 'NONE')
call s:Hi('IncSearch'    , s:yellow[0]            , s:cBackground[0]      , 'bold'      , s:yellow[1]            , s:cBackground[1]      , 'bold')
call s:Hi('LineNr'       , 'NONE'                 , s:cBackgroundLight[0] , 'NONE'      , 'NONE'                 , s:cBackgroundLight[1] , 'NONE' )
call s:Hi('MatchParen'   , 'NONE'                 , s:yellow[0]           , 'bold'      , 'NONE'                 , s:yellow[1]           , 'bold' )
call s:Hi('ModeMsg'      , 'NONE'                 , s:yellow[0]           , 'bold'      , 'NONE'                 , s:yellow[1]           , 'bold')
call s:Hi('Normal'       , s:cBackground[0]       , s:cText[0]            , 'NONE'      , s:cBackground[1]       , s:cText[1]            , 'NONE')
call s:Hi('PmenuSbar'    , s:cSelected[0]         , s:lightYellow[0]      , 'NONE'      , s:cSelected[1]         , s:lightYellow[1]      , 'NONE')
call s:Hi('Pmenu'        , s:cBackgroundLight[0]  , s:cTextDark[0]        , 'NONE'      , s:cBackgroundLight[1]  , s:cTextDark[1]        , 'NONE')
call s:Hi('PmenuSel'     , s:cBackground[0]       , s:cText[0]            , 'NONE'      , s:cBackground[1]       , s:cText[1]            , 'NONE')
call s:Hi('PreProc'      , 'NONE'                 , s:lightViolet[0]      , 'NONE'      , 'NONE'                 , s:lightViolet[1]      , 'NONE')
call s:Hi('Question'     , 'NONE'                 , s:lightGreen[0]       , 'bold'      , 'NONE'                 , s:lightGreen[1]       , 'bold')
call s:Hi('Search'       , 'black'                , s:lightYellow[0]      , 'bold'      , '16'                   , s:lightYellow[1]      , 'bold')
call s:Hi('SpecialKey'   , 'NONE'                 , s:cBackgroundLight[0] , 'NONE'      , 'NONE'                 , s:cBackgroundLight[1] , 'NONE')
call s:Hi('Special'      , 'NONE'                 , s:cTextLight[0]       , 'NONE'      , 'NONE'                 , s:cTextLight[1]       , 'NONE')
call s:Hi('SpellBad'     , 'NONE'                 , 'NONE'                , 'undercurl' , 'NONE'                 , 'NONE'                , 'undercurl')
call s:Hi('Statement'    , 'NONE'                 , s:lightYellow[0]      , 'NONE'      , 'NONE'                 , s:lightYellow[1]      , 'NONE')
call s:Hi('StatusLineNC' , s:cBackgroundLight[0]  , s:cText[0]            , 'NONE'      , s:cBackgroundLight[1]  , s:cText[1]            , 'NONE')
call s:Hi('StatusLine'   , s:yellow[0]            , s:cBackground[0]      , 'NONE'      , s:yellow[1]            , s:cBackground[1]      , 'NONE')
call s:Hi('TabLineFill'  , 'NONE'                 , s:cText[0]            , 'NONE'      , 'NONE'                 , s:cText[1]            , 'NONE')
call s:Hi('TabLine'      , s:cBackgroundLight[0]  , s:cTextDark[0]        , 'NONE'      , s:cBackgroundLight[1]  , s:cTextDark[1]        , 'NONE')
call s:Hi('TabLineSel'   , s:cBackground[0]       , s:yellow[0]           , 'bold'      , s:cBackground[1]       , s:yellow[1]           , 'bold')
call s:Hi('Title'        , 'NONE'                 , s:lightRed[0]         , 'NONE'      , 'NONE'                 , s:lightRed[1]         , 'NONE')
call s:Hi('Todo'         , 'NONE'                 , s:yellow[0]           , 'NONE'      , 'NONE'                 , s:yellow[1]           , 'NONE')
call s:Hi('Type'         , 'NONE'                 , s:cTextDark[0]        , 'NONE'      , 'NONE'                 , s:cTextDark[1]        , 'NONE')
call s:Hi('VertSplit'    , 'NONE'                 , s:yellow[0]           , 'NONE'      , 'NONE'                 , s:yellow[1]           , 'NONE')
call s:Hi('Visual'       , s:cSelected[0]         , 'NONE'                , 'NONE'      , s:cSelected[1]         , 'NONE'                , 'NONE')
call s:Hi('WarningMsg'   , 'NONE'                 , s:yellow[0]           , 'bold'      , 'NONE'                 , s:yellow[1]           , 'bold')
call s:Hi('WildMenu'     , s:cBackground[0]       , s:yellow[0]           , 'NONE'      , s:cBackground[1]       , s:yellow[1]           , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" }

" " Vim {
call s:Hi('vimAutoEvent' , 'NONE' , s:cTextExtraDark[0] , 'NONE' , 'NONE' , s:cTextExtraDark[1] , 'NONE')
call s:Hi('vimCommand'   , 'NONE' , s:lightRed[0]       , 'NONE' , 'NONE' , s:lightRed[1]       , 'NONE')
call s:Hi('vimContinue'  , 'NONE' , s:cTextDark[0]      , 'NONE' , 'NONE' , s:cTextDark[1]      , 'NONE')
call s:Hi('vimFuncName'  , 'NONE' , s:lightYellow[0]    , 'NONE' , 'NONE' , s:lightYellow[1]    , 'NONE')
call s:Hi('vimOper'      , 'NONE' , s:cText[0]          , 'NONE' , 'NONE' , s:cText[1]          , 'NONE')
call s:Hi('vimOption'    , 'NONE' , s:lightViolet[0]    , 'NONE' , 'NONE' , s:lightViolet[1]    , 'NONE')
call s:Hi('vimString'    , 'NONE' , s:lightGreen[0]     , 'NONE' , 'NONE' , s:lightGreen[1]     , 'NONE')
hi! link vimComment Comment
hi! link VimCommentTitle Comment
hi! link vimEchoHLNone vimOper
hi! link vimEnvvar vimOption
hi! link vimFuncVar vimVar
hi! link vimFunc vimFuncName
hi! link vimGroup vimFuncName
hi! link vimHiGroup vimFuncName
hi! link vimIsCommand vimCommand
hi! link VimLineComment Comment
hi! link vimMapModKey vimOper
hi! link vimMapMod vimOper
hi! link vimNotation vimOper
hi! link vimOperParen vimOper
hi! link vimParenSep vimOper
hi! link vimSep vimOper
hi! link vimSynType vimFuncName
hi! link vimUserAttrbCmplt vimContinue
hi! link vimUserAttrb vimContinue
hi! link vimUserCmd vimCommand
hi! link vimVar Identifier
" }
"
" Vimhelp {
call s:Hi('helpExample'      , 'NONE' , s:cTextExtraDark[0] , 'NONE' , 'NONE' , s:cTextExtraDark[1] , 'NONE')
call s:Hi('helpOption'       , 'NONE' , s:cTextExtraDark[0] , 'NONE' , 'NONE' , s:cTextExtraDark[1] , 'NONE')
call s:Hi('helpSectionDelim' , 'NONE' , s:cTextExtraDark[0] , 'NONE' , 'NONE' , s:cTextExtraDark[1] , 'NONE')
hi! link helpComment Comment
hi! link helpConstant Constant
hi! link helpError Error
hi! link helpIdentifier Identifier
hi! link helpPreProc PreProc
hi! link helpSpecial Special
hi! link helpStatement Statement
hi! link helpTodo Todo
hi! link helpType Type
" }

" HTML {
call s:Hi('HtmlArg'         , 'NONE' , s:lightYellow[0] , 'NONE'      , 'NONE' , s:lightYellow[1] , 'NONE')
call s:Hi('HtmlBold'        , 'NONE' , 'NONE'           , 'bold'      , 'NONE' , 'NONE'           , 'bold')
call s:Hi('HtmlH1'          , 'NONE' , s:cText[0]       , 'NONE'      , 'NONE' , s:cText[1]       , 'NONE')
call s:Hi('HtmlItalic'      , 'NONE' , 'NONE'           , 'italic'    , 'NONE' , 'NONE'           , 'italic')
call s:Hi('HtmlLink'        , 'NONE' , s:cText[0]       , 'underline' , 'NONE' , s:cText[1]       , 'underline')
call s:Hi('HtmlSpecialChar' , 'NONE' , s:cTextDark[0]   , 'NONE'      , 'NONE' , s:cTextDark[1]   , 'NONE')
call s:Hi('HtmlString'      , 'NONE' , s:lightGreen[0]  , 'NONE'      , 'NONE' , s:lightGreen[1]  , 'NONE')
call s:Hi('HtmlTagName'     , 'NONE' , s:lightRed[0]    , 'NONE'      , 'NONE' , s:lightRed[1]    , 'NONE')
call s:Hi('HtmlTitle'       , 'NONE' , s:cText[0]       , 'bold'      , 'NONE' , s:cText[1]       , 'bold')
call s:Hi('HtmlUnderline'   , 'NONE' , 'NONE'           , 'underline' , 'NONE' , 'NONE'           , 'underline')
hi! link HtmlEndTag HtmlTag
hi! link HtmlH2 HtmlH1
hi! link HtmlH3 HtmlH2
hi! link HtmlH4 HtmlH3
hi! link HtmlH5 HtmlH4
hi! link HtmlH6 HtmlH5
hi! link HtmlScriptTag HtmlTagName
hi! link HtmlSpecialTagName HtmlTagName
" }

" CSS {
call s:Hi('cssAttrComma'    , 'NONE' , s:lightViolet[0] , 'NONE'   , 'NONE' , s:lightViolet[1] , 'NONE')
call s:Hi('cssAttr'         , 'NONE' , s:lightYellow[0] , 'NONE'   , 'NONE' , s:lightYellow[1] , 'NONE')
call s:Hi('cssClassName'    , 'NONE' , s:lightViolet[0] , 'NONE'   , 'NONE' , s:lightViolet[1] , 'NONE')
call s:Hi('cssDefinition'   , 'NONE' , s:lightBlue[0]   , 'NONE'   , 'NONE' , s:lightBlue[1]   , 'NONE')
call s:Hi('cssFunction'     , 'NONE' , s:cText[0]       , 'NONE'   , 'NONE' , s:cText[1]       , 'NONE')
call s:Hi('cssIdentifier'   , 'NONE' , s:lightViolet[0] , 'bold'   , 'NONE' , s:lightViolet[1] , 'bold')
call s:Hi('cssImportant'    , 'NONE' , s:lightBlue[0]   , 'italic' , 'NONE' , s:lightBlue[1]   , 'italic')
call s:Hi('cssMediaKeyword' , 'NONE' , s:cTextLight[0]  , 'bold'   , 'NONE' , s:cTextLight[1]  , 'bold')
call s:Hi('cssMedia'        , 'NONE' , s:cTextLight[0]  , 'NONE'   , 'NONE' , s:cTextLight[1]  , 'NONE')
call s:Hi('cssProp'         , 'NONE' , s:lightBlue[0]   , 'NONE'   , 'NONE' , s:lightBlue[1]   , 'NONE')
call s:Hi('cssPseudoClass'  , 'NONE' , s:lightRed[0]    , 'NONE'   , 'NONE' , s:lightRed[1]    , 'NONE')
call s:Hi('cssStringQ'      , 'NONE' , s:lightGreen[0]  , 'NONE'   , 'NONE' , s:lightGreen[1]  , 'NONE')
call s:Hi('cssTagName'      , 'NONE' , s:cText[0]       , 'bold'   , 'NONE' , s:cText[1]       , 'bold')
call s:Hi('cssValueNumber'  , 'NONE' , s:lightYellow[0] , 'NONE'   , 'NONE' , s:lightYellow[1] , 'NONE')
hi! link cssBraces cssTagName
hi! link cssColor cssValueNumber
hi! link cssCommonAttr cssValueNumber
hi! link cssFunctionComma cssFunc
hi! link cssFunctionName cssFunc
hi! link cssListAttr cssAttr
hi! link cssPositioningAttr cssValueNumber
hi! link cssPseudoClassFn cssPseudoClass
hi! link cssPseudoClassId cssPseudoClass
hi! link cssPseudoClassLAng cssPseudoClass
hi! link cssStringQQ cssStringQ
hi! link cssUnicodeEscape cssValueNumber
hi! link cssUnitDecorators cssValueNumber
hi! link cssValueAngle cssValueNumber
hi! link cssValueFrequency cssValueNumber
hi! link cssValueInteger cssValueNumber
hi! link cssValueLength cssValueNumber
hi! link cssValueTime cssValueNumber
" }

" SCSS {
call s:Hi('sassCssAttribute'           , 'NONE' , s:cTextDark[0]  , 'NONE'   , 'NONE' , s:cTextDark[1]  , 'NONE')
call s:Hi('sassDefault'                , 'NONE' , s:lightBlue[0]  , 'italic' , 'NONE' , s:lightBlue[1]  , 'italic')
call s:Hi('sassInclude'                , 'NONE' , s:cTextLight[0] , 'bold'   , 'NONE' , s:cTextLight[1] , 'bold')
call s:Hi('sassInterpolationDelimiter' , 'NONE' , s:cTextLight[0] , 'NONE'   , 'NONE' , s:cTextLight[1] , 'NONE')
call s:Hi('sassVariable'               , 'NONE' , s:lightRed[0]   , 'NONE'   , 'NONE' , s:lightRed[1]   , 'NONE')
hi! link sassClassChar sassClass
hi! link sassClass cssClassName
hi! link sassControl sassInclude
hi! link sassDefinition cssDefinition
hi! link sassFunction cssFunctionName
hi! link sassIdChar sassId
hi! link sassId cssIdentifier
hi! link sassMixing sassInclude
hi! link sassMixin sassInclude
hi! link sassProp cssProp
" }

" PHP {
call s:Hi('phpIdentifier'     , 'NONE' , s:lightRed[0]    , 'NONE' , 'NONE' , s:lightRed[1]    , 'NONE')
call s:Hi('phpInclude'        , 'NONE' , s:lightYellow[0] , 'bold' , 'NONE' , s:lightYellow[1] , 'bold')
call s:Hi('phpKeyword'        , 'NONE' , s:lightViolet[0] , 'NONE' , 'NONE' , s:lightViolet[1] , 'NONE')
call s:Hi('phpMemberSelector' , 'NONE' , s:lightYellow[0] , 'NONE' , 'NONE' , s:lightYellow[1] , 'NONE')
call s:Hi('phpParent'         , 'NONE' , s:cTextDark[0]   , 'NONE' , 'NONE' , s:cTextDark[1]   , 'NONE')
call s:Hi('phpRegion'         , 'NONE' , s:cText[0]       , 'NONE' , 'NONE' , s:cText[1]       , 'NONE')
call s:Hi('phpStringDouble'   , 'NONE' , s:cTextDark[0]   , 'NONE' , 'NONE' , s:cTextDark[1]   , 'NONE')
call s:Hi('phpStringSingle'   , 'NONE' , s:lightGreen[0]  , 'NONE' , 'NONE' , s:lightGreen[1]  , 'NONE')
call s:Hi('phpSuperglobals'   , 'NONE' , s:lightRed[0]    , 'bold' , 'NONE' , s:lightRed[1]    , 'bold')
call s:Hi('phpType'           , 'NONE' , s:lightBlue[0]   , 'NONE' , 'NONE' , s:lightBlue[1]   , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
hi! link phpStringDelimiter phpStringSingle
hi! link phpVarSelector phpIdentifier
" }

" Markdown {
call s:Hi('markdownCodeBlock'   , 'NONE' , s:cTextExtraDark[0] , 'NONE'      , 'NONE' , s:cTextExtraDark[1] , 'NONE')
call s:Hi('markdownCode'        , 'NONE' , s:lightBlue[0]      , 'NONE'      , 'NONE' , s:lightBlue[1]      , 'NONE')
call s:Hi('markdownH0'          , 'NONE' , s:cTextLight[0]     , 'bold'      , 'NONE' , s:cTextLight[1]     , 'bold')
call s:Hi('markdownHeadingRule' , 'NONE' , s:lightViolet[0]    , 'bold'      , 'NONE' , s:lightViolet[1]    , 'bold')
call s:Hi('markdownLinkText'    , 'NONE' , s:lightBlue[0]      , 'underline' , 'NONE' , s:lightBlue[1]      , 'underline')
call s:Hi('markdownListMarker'  , 'NONE' , s:lightRed[0]       , 'NONE'      , 'NONE' , s:lightRed[1]       , 'NONE')
call s:Hi('markdownURL'         , 'NONE' , s:lightYellow[0]    , 'NONE'      , 'NONE' , s:lightYellow[1]    , 'NONE')
call s:Hi('markdownURLTitle'    , 'NONE' , s:lightGreen[0]     , 'NONE'      , 'NONE' , s:lightGreen[1]     , 'NONE')
hi! link markdownBlockquote markdownCode
hi! link markdownBold HtmlBold
hi! link markdownCodeDelimiter markdownCode
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownHeadingDelimiter markdownHeadingRule
hi! link markdownIdDeclaration markdownLinkText
hi! link markdownItalic HtmlItalic
hi! link markdownOrderedListMarker markdownListMarker
hi! link markdownRule markdownCodeBlock
hi! link markdownURLTitleDelimiter markdownURLTitle
" }

" For NERDtree plugin {
call s:Hi('NERDtreeBookmark'  , 'NONE'               , s:lightBlue[0]      , 'NONE' , 'NONE'               , s:lightBlue[1]      , 'NONE')
call s:Hi('NERDtreeCWD'       , 'NONE'               , s:lightYellow[0]    , 'NONE' , 'NONE'               , s:lightYellow[1]    , 'NONE')
call s:Hi('NERDtreeDir'       , 'NONE'               , s:cTextLight[0]     , 'bold' , 'NONE'               , s:cTextLight[1]     , 'bold')
call s:Hi('NERDtreeFile'      , 'NONE'               , s:cText[0]          , 'NONE' , 'NONE'               , s:cText[1]          , 'NONE')
call s:Hi('NERDtreeHelp'      , 'NONE'               , s:lightRed[0]       , 'NONE' , 'NONE'               , s:lightRed[1]       , 'NONE')
call s:Hi('NERDtreeToggleOff' , s:cBackgroundDark[0] , s:red[0]            , 'bold' , s:cBackgroundDark[1] , s:red[1]            , 'bold')
call s:Hi('NERDtreeToggleOn'  , s:cBackgroundDark[0] , s:green[0]          , 'bold' , s:cBackgroundDark[1] , s:green[1]          , 'bold')
call s:Hi('NERDtreeUp'        , 'NONE'               , s:cTextExtraDark[0] , 'NONE' , 'NONE'               , s:cTextExtraDark[1] , 'NONE')
hi! link NERDtreeBookmarkName NERDtreeFile
hi! link NERDtreeBookmarksHeader NERDtreeCWD
hi! link NERDtreeClosable NERDtreeDirSlash
hi! link NERDtreeDirSlash NERDtreeCWD
hi! link NERDtreeHelpCommand NERDtreeFile
hi! link NERDtreeHelpKey NERDtreeFile
hi! link NERDtreeHelpTitle NERDtreeHelp
hi! link NERDtreeOpenable NERDtreeDirSlash
" }

" For CtrlP plugin {
call s:Hi('CtrlPLinePre'   , 'NONE' , s:cText[0]       , 'NONE'      , 'NONE' , s:cText[1]       , 'NONE')
call s:Hi('CtrlPMatch'     , 'NONE' , s:lightYellow[0] , 'bold'      , 'NONE' , s:lightYellow[1] , 'bold')
call s:Hi('CtrlPMode1'     , 'NONE' , s:cTextDark[0]   , 'NONE'      , 'NONE' , s:cTextDark[1]   , 'NONE')
call s:Hi('CtrlPNoEntries' , 'NONE' , s:red[0]         , 'bold'      , 'NONE' , s:red[1]         , 'bold')
call s:Hi('CtrlPPrtCursor' , 'NONE' , s:lightYellow[0] , 'underline' , 'NONE' , s:lightYellow[1] , 'underline')
hi! link CtrlPPrtBase CtrlPMatch
" }
