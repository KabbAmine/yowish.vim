" Yowish colorscheme.
" Version: 0.4

" Creation     : 2015-01-09
" Modification : 2015-03-15
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "yowish"

" *********************
" Colors
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

fun! <SID>hi(groupName, bgColor, fgColor, option)
	" Set higlighting colors of specified group name
	let l:bgColor = type(a:bgColor) == type('NONE') ? ['NONE', 'NONE'] : a:bgColor
	let l:fgColor = type(a:fgColor) == type('NONE') ? ['NONE', 'NONE'] : a:fgColor
	let l:command = 'hi ' . a:groupName
	let l:params = ['gui', 'cterm']
	for i in (range(0, len(l:params)-1))
		let l:command .= ' ' . l:params[i] . 'bg=' . l:bgColor[i] . ' ' . l:params[i] . 'fg=' . l:fgColor[i]
		let l:command .= ' ' . l:params[i] . '=' . a:option
	endfor
	exe l:command
endfun

" *********************
" Highlighting
" *********************

" Default {
call <SID>hi('Comment'      , 'NONE'              , s:cComment         , 'NONE')
call <SID>hi('Conceal'      , 'NONE'              , s:cBackgroundLight , 'NONE')
call <SID>hi('Constant'     , 'NONE'              , s:lightRed         , 'NONE')
call <SID>hi('CursorLineNr' , 'NONE'              , s:lightYellow      , 'NONE')
call <SID>hi('CursorLine'   , s:cBackgroundLight  , 'NONE'             , 'NONE')
call <SID>hi('Cursor'       , s:cText             , s:cBackgroundDark  , 'NONE')
call <SID>hi('DiffAdd'      , 'NONE'              , s:green            , 'NONE')
call <SID>hi('DiffChange'   , 'NONE'              , s:yellow           , 'NONE')
call <SID>hi('DiffDelete'   , 'NONE'              , s:red              , 'NONE')
call <SID>hi('DiffText'     , 'NONE'              , s:cTextDark        , 'NONE')
call <SID>hi('Directory'    , 'NONE'              , s:cTextDark        , 'NONE')
call <SID>hi('ErrorMsg'     , s:red               , s:cText            , 'bold')
call <SID>hi('Error'        , 'NONE'              , s:red              , 'bold')
call <SID>hi('FoldColumn'   , s:cColumnBackground , s:cColumnElements  , 'NONE')
call <SID>hi('Identifier'   , 'NONE'              , s:lightBlue        , 'NONE')
call <SID>hi('IncSearch'    , s:lightYellow       , s:cBackground      , 'NONE')
call <SID>hi('LineNr'       , 'NONE'              , s:cBackgroundLight , 'NONE')
call <SID>hi('MatchParen'   , 'NONE'              , s:yellow           , 'bold')
call <SID>hi('ModeMsg'      , 'NONE'              , s:yellow           , 'bold')
call <SID>hi('Normal'       , s:cBackground       , s:cText            , 'NONE')
call <SID>hi('PmenuSbar'    , s:cSelected         , s:lightYellow      , 'NONE')
call <SID>hi('Pmenu'        , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call <SID>hi('PmenuSel'     , s:cBackground       , s:cText            , 'NONE')
call <SID>hi('PreProc'      , 'NONE'              , s:lightViolet      , 'NONE')
call <SID>hi('Question'     , 'NONE'              , s:lightGreen       , 'bold')
call <SID>hi('Search'       , s:yellow            , s:cBackgroundDark  , 'bold')
call <SID>hi('SpecialKey'   , 'NONE'              , s:cBackgroundLight , 'NONE')
call <SID>hi('Special'      , 'NONE'              , s:cTextLight       , 'NONE')
call <SID>hi('SpellBad'     , 'NONE'              , 'NONE'             , 'undercurl')
call <SID>hi('Statement'    , 'NONE'              , s:lightYellow      , 'NONE')
call <SID>hi('StatusLineNC' , s:cBackgroundLight  , s:cText            , 'NONE')
call <SID>hi('StatusLine'   , s:yellow            , s:cBackground      , 'NONE')
call <SID>hi('TabLineFill'  , 'NONE'              , s:cText            , 'NONE')
call <SID>hi('TabLine'      , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call <SID>hi('TabLineSel'   , s:cBackground       , s:yellow           , 'bold')
call <SID>hi('Title'        , 'NONE'              , s:lightRed         , 'NONE')
call <SID>hi('Todo'         , 'NONE'              , s:yellow           , 'NONE')
call <SID>hi('Type'         , 'NONE'              , s:cTextDark        , 'NONE')
call <SID>hi('VertSplit'    , 'NONE'              , s:yellow           , 'NONE')
call <SID>hi('Visual'       , s:cSelected         , 'NONE'             , 'NONE')
call <SID>hi('WarningMsg'   , 'NONE'              , s:yellow           , 'bold')
call <SID>hi('WildMenu'     , s:cBackground       , s:yellow           , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" }

" Vim {
call <SID>hi('vimAutoEvent' , 'NONE' , s:cTextExtraDark , 'NONE')
call <SID>hi('vimCommand'   , 'NONE' , s:lightRed       , 'NONE')
call <SID>hi('vimContinue'  , 'NONE' , s:cTextDark      , 'NONE')
call <SID>hi('vimFuncName'  , 'NONE' , s:lightYellow    , 'NONE')
call <SID>hi('vimOper'      , 'NONE' , s:cText          , 'NONE')
call <SID>hi('vimOption'    , 'NONE' , s:lightViolet    , 'NONE')
call <SID>hi('vimString'    , 'NONE' , s:lightGreen     , 'NONE')
hi! link vimComment Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle Comment
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
call <SID>hi('helpExample'      , 'NONE' , s:cTextExtraDark , 'NONE')
call <SID>hi('helpOption'       , 'NONE' , s:cTextExtraDark , 'NONE')
call <SID>hi('helpSectionDelim' , 'NONE' , s:cTextExtraDark , 'NONE')
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
call <SID>hi('HtmlArg'         , 'NONE' , s:lightYellow , 'NONE')
call <SID>hi('HtmlBold'        , 'NONE' , 'NONE'        , 'bold')
call <SID>hi('HtmlH1'          , 'NONE' , s:cText       , 'NONE')
call <SID>hi('HtmlItalic'      , 'NONE' , 'NONE'        , 'italic')
call <SID>hi('HtmlLink'        , 'NONE' , s:cText       , 'underline')
call <SID>hi('HtmlSpecialChar' , 'NONE' , s:cTextDark   , 'NONE')
call <SID>hi('HtmlString'      , 'NONE' , s:lightGreen  , 'NONE')
call <SID>hi('HtmlTagName'     , 'NONE' , s:lightRed    , 'NONE')
call <SID>hi('HtmlTitle'       , 'NONE' , s:cText       , 'bold')
call <SID>hi('HtmlUnderline'   , 'NONE' , 'NONE'        , 'underline')
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
call <SID>hi('cssAttrComma'    , 'NONE' , s:lightViolet , 'NONE')
call <SID>hi('cssAttr'         , 'NONE' , s:lightYellow , 'NONE')
call <SID>hi('cssClassName'    , 'NONE' , s:lightViolet , 'NONE')
call <SID>hi('cssDefinition'   , 'NONE' , s:lightBlue   , 'NONE')
call <SID>hi('cssFunction'     , 'NONE' , s:cText       , 'NONE')
call <SID>hi('cssIdentifier'   , 'NONE' , s:lightViolet , 'bold')
call <SID>hi('cssImportant'    , 'NONE' , s:lightBlue   , 'italic')
call <SID>hi('cssMediaKeyword' , 'NONE' , s:cTextLight  , 'bold')
call <SID>hi('cssMedia'        , 'NONE' , s:cTextLight  , 'NONE')
call <SID>hi('cssProp'         , 'NONE' , s:lightBlue   , 'NONE')
call <SID>hi('cssPseudoClass'  , 'NONE' , s:lightRed    , 'NONE')
call <SID>hi('cssStringQ'      , 'NONE' , s:lightGreen  , 'NONE')
call <SID>hi('cssTagName'      , 'NONE' , s:cText       , 'bold')
call <SID>hi('cssValueNumber'  , 'NONE' , s:lightYellow , 'NONE')
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
call <SID>hi('sassCssAttribute'           , 'NONE' , s:cTextDark  , 'NONE')
call <SID>hi('sassDefault'                , 'NONE' , s:lightBlue  , 'italic')
call <SID>hi('sassInclude'                , 'NONE' , s:cTextLight , 'bold')
call <SID>hi('sassInterpolationDelimiter' , 'NONE' , s:cTextLight , 'NONE')
call <SID>hi('sassVariable'               , 'NONE' , s:lightRed   , 'NONE')
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
call <SID>hi('phpIdentifier'     , 'NONE' , s:lightRed  , 'NONE')
call <SID>hi('phpInclude'        , 'NONE' , s:lightYellow , 'bold')
call <SID>hi('phpKeyword'        , 'NONE' , s:lightViolet , 'NONE')
call <SID>hi('phpMemberSelector' , 'NONE' , s:lightYellow , 'NONE')
call <SID>hi('phpParent'         , 'NONE' , s:cTextDark   , 'NONE')
call <SID>hi('phpRegion'         , 'NONE' , s:cText       , 'NONE')
call <SID>hi('phpStringDouble'   , 'NONE' , s:cTextDark   , 'NONE')
call <SID>hi('phpStringSingle'   , 'NONE' , s:lightGreen  , 'NONE')
call <SID>hi('phpSuperglobals'   , 'NONE' , s:lightRed    , 'bold')
call <SID>hi('phpType'           , 'NONE' , s:lightBlue   , 'NONE')
call <SID>hi('phpVarSelector'    , 'NONE' , s:lightRed    , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
hi! link phpStringDelimiter phpStringSingle
" }

" Markdown {
call <SID>hi('markdownCodeBlock'   , 'NONE' , s:cTextExtraDark , 'NONE')
call <SID>hi('markdownCode'        , 'NONE' , s:lightBlue      , 'NONE')
call <SID>hi('markdownH1'          , 'NONE' , s:cTextLight     , 'bold')
call <SID>hi('markdownHeadingRule' , 'NONE' , s:lightViolet    , 'bold')
call <SID>hi('markdownLinkText'    , 'NONE' , s:lightBlue      , 'underline')
call <SID>hi('markdownListMarker'  , 'NONE' , s:lightRed       , 'NONE')
call <SID>hi('markdownURL'         , 'NONE' , s:lightYellow    , 'NONE')
call <SID>hi('markdownURLTitle'    , 'NONE' , s:lightGreen     , 'NONE')
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
call <SID>hi('NERDtreeBookmark'  , 'NONE'            , s:lightBlue      , 'NONE')
call <SID>hi('NERDtreeCWD'       , 'NONE'            , s:lightYellow    , 'NONE')
call <SID>hi('NERDtreeDir'       , 'NONE'            , s:cTextLight     , 'bold')
call <SID>hi('NERDtreeFile'      , 'NONE'            , s:cText          , 'NONE')
call <SID>hi('NERDtreeHelp'      , 'NONE'            , s:lightRed       , 'NONE')
call <SID>hi('NERDtreeToggleOff' , s:cBackgroundDark , s:red            , 'bold')
call <SID>hi('NERDtreeToggleOn'  , s:cBackgroundDark , s:green          , 'bold')
call <SID>hi('NERDtreeUp'        , 'NONE'            , s:cTextExtraDark , 'NONE')
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
call <SID>hi('CtrlPLinePre'   , 'NONE' , s:cText       , 'NONE')
call <SID>hi('CtrlPMatch'     , 'NONE' , s:lightYellow , 'bold')
call <SID>hi('CtrlPMode1'     , 'NONE' , s:cTextDark   , 'NONE')
call <SID>hi('CtrlPNoEntries' , 'NONE' , s:red         , 'bold')
call <SID>hi('CtrlPPrtCursor' , 'NONE' , s:lightYellow , 'underline')
hi! link CtrlPPrtBase CtrlPMatch
" }
