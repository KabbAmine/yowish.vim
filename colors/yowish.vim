" Yowish colorscheme.
" Version: 0.2

" Creation     : 2015-01-09
" Modification : 2015-01-11
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
	
	let l:params = ['guibg', 'guifg', 'gui']
	let l:command = 'hi ' . a:groupName
	if (len(a:000) < 1) || (len(a:000) > (len(params)))
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

" Colors {
let s:cBackground = '#222222'
let s:cBackgroundDark = '#0e0e0e'
let s:cBackgroundLight = '#393939'
let s:cText = '#cbcbcb'
let s:cTextDark = '#bebebe'
let s:cTextExtraDark = '#8c8c8c'
let s:cTextLight = '#ebebeb'
let s:cCursor = '#151515'
let s:cSelected = '#373B41'
let s:cColumnBackground = s:cBackground
let s:cColumnElements = '#6e6e6e'

let s:cComment = '#6e6e6e'

let s:red = '#f01d22'
let s:green = '#2acf2a'
let s:yellow = '#ffbe3c'

let s:lightRed = '#f2777a'
let s:lightGreen = '#99cc99'
let s:lightYellow = '#ffcc66'
let s:lightBlue = '#6699cc'
let s:lightViolet = '#d09cea'
let s:lightOrange = '#ffcc66'
" }

" *********************
" Highlighting
" *********************

" Default {
call s:Hi('Comment'      , 'NONE'              , s:cComment         , 'NONE')
call s:Hi('Conceal'      , 'NONE'              , s:cBackgroundLight , 'NONE')
call s:Hi('Constant'     , 'NONE'              , s:lightRed         , 'NONE')
call s:Hi('CursorLineNr' , 'NONE'              , s:lightYellow      , 'NONE')
call s:Hi('CursorLine'   , s:cBackgroundLight  , 'NONE'             , 'NONE')
call s:Hi('Cursor'       , s:cCursor           , 'NONE'             , 'NONE')
call s:Hi('DiffAdd'      , 'NONE'              , s:green            , 'NONE')
call s:Hi('DiffChange'   , 'NONE'              , s:yellow           , 'NONE')
call s:Hi('DiffDelete'   , 'NONE'              , s:red              , 'NONE')
call s:Hi('DiffText'     , 'NONE'              , s:cTextDark        , 'NONE')
call s:Hi('Directory'    , 'NONE'              , s:cTextDark        , 'NONE')
call s:Hi('ErrorMsg'     , s:red               , s:cText            , 'bold')
call s:Hi('Error'        , 'NONE'              , s:red              , 'bold')
call s:Hi('FoldColumn'   , s:cColumnBackground , s:cColumnElements  , 'NONE')
call s:Hi('Identifier'   , 'NONE'              , s:lightBlue        , 'NONE')
call s:Hi('IncSearch'    , s:yellow            , s:cBackground      , 'bold')
call s:Hi('LineNr'       , 'NONE'              , s:cBackgroundLight , 'NONE' )
call s:Hi('MatchParen'   , 'NONE'              , s:yellow           , 'bold' )
call s:Hi('ModeMsg'      , 'NONE'              , s:yellow           , 'bold')
call s:Hi('Normal'       , s:cBackground       , s:cText            , 'NONE')
call s:Hi('PmenuSbar'    , s:cSelected         , s:lightYellow      , 'NONE')
call s:Hi('Pmenu'        , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call s:Hi('PmenuSel'     , s:cBackground       , s:cText            , 'NONE')
call s:Hi('PreProc'      , 'NONE'              , s:lightViolet      , 'NONE')
call s:Hi('Question'     , 'NONE'              , s:lightGreen       , 'bold')
call s:Hi('Search'       , 'black'             , s:lightYellow      , 'bold')
call s:Hi('SpecialKey'   , 'NONE'              , s:cBackgroundLight , 'NONE')
call s:Hi('Special'      , 'NONE'              , s:cTextLight       , 'NONE')
call s:Hi('SpellBad'     , 'NONE'              , 'NONE'             , 'undercurl')
call s:Hi('Statement'    , 'NONE'              , s:lightYellow      , 'NONE')
call s:Hi('StatusLineNC' , s:cBackgroundLight  , s:cText            , 'NONE')
call s:Hi('StatusLine'   , s:yellow            , s:cBackground      , 'NONE')
call s:Hi('TabLineFill'  , 'NONE'              , s:cText            , 'NONE')
call s:Hi('TabLine'      , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call s:Hi('TabLineSel'   , s:cBackground       , s:yellow           , 'bold')
call s:Hi('Title'        , 'NONE'              , s:lightRed         , 'NONE')
call s:Hi('Todo'         , 'NONE'              , s:yellow           , 'NONE')
call s:Hi('Type'         , 'NONE'              , s:cTextDark        , 'NONE')
call s:Hi('VertSplit'    , 'NONE'              , s:yellow           , 'NONE')
call s:Hi('Visual'       , s:cSelected         , s:cTextLight       , 'NONE')
call s:Hi('WarningMsg'   , 'NONE'              , s:yellow           , 'bold')
call s:Hi('WildMenu'     , s:cBackground       , s:yellow           , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" }

" Vim {
call s:Hi('vimAutoEvent' , 'NONE' , s:cTextExtraDark , 'NONE')
call s:Hi('vimCommand'   , 'NONE' , s:lightRed       , 'NONE')
call s:Hi('vimContinue'  , 'NONE' , s:cTextDark      , 'NONE')
call s:Hi('vimFuncName'  , 'NONE' , s:lightYellow    , 'NONE')
call s:Hi('vimOper'      , 'NONE' , s:cText          , 'NONE')
call s:Hi('vimOption'    , 'NONE' , s:lightViolet    , 'NONE')
call s:Hi('vimString'    , 'NONE' , s:lightGreen     , 'NONE')
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

" Vimhelp {
call s:Hi('helpExample'      , 'NONE' , s:cTextExtraDark , 'NONE')
call s:Hi('helpOption'       , 'NONE' , s:cTextExtraDark , 'NONE')
call s:Hi('helpSectionDelim' , 'NONE' , s:cTextExtraDark , 'NONE')
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
call s:Hi('HtmlArg'         , 'NONE' , s:lightYellow , 'NONE')
call s:Hi('HtmlBold'        , 'NONE' , 'NONE'        , 'bold')
call s:Hi('HtmlH1'          , 'NONE' , s:cText       , 'NONE')
call s:Hi('HtmlItalic'      , 'NONE' , 'NONE'        , 'italic')
call s:Hi('HtmlLink'        , 'NONE' , s:cText       , 'underline')
call s:Hi('HtmlSpecialChar' , 'NONE' , s:cTextDark   , 'NONE')
call s:Hi('HtmlString'      , 'NONE' , s:lightGreen  , 'NONE')
call s:Hi('HtmlTagName'     , 'NONE' , s:lightRed    , 'NONE')
call s:Hi('HtmlTitle'       , 'NONE' , s:cText       , 'bold')
call s:Hi('HtmlUnderline'   , 'NONE' , 'NONE'        , 'underline')
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
call s:Hi('cssAttrComma'    , 'NONE' , s:lightViolet , 'NONE')
call s:Hi('cssAttr'         , 'NONE' , s:lightYellow , 'NONE')
call s:Hi('cssClassName'    , 'NONE' , s:lightViolet , 'NONE')
call s:Hi('cssDefinition'   , 'NONE' , s:lightBlue   , 'NONE')
call s:Hi('cssFunction'     , 'NONE' , s:cText       , 'NONE')
call s:Hi('cssIdentifier'   , 'NONE' , s:lightViolet , 'bold')
call s:Hi('cssImportant'    , 'NONE' , s:lightBlue   , 'italic')
call s:Hi('cssMediaKeyword' , 'NONE' , s:cTextLight  , 'bold')
call s:Hi('cssMedia'        , 'NONE' , s:cTextLight  , 'NONE')
call s:Hi('cssProp'         , 'NONE' , s:lightBlue   , 'NONE')
call s:Hi('cssPseudoClass'  , 'NONE' , s:lightRed    , 'NONE')
call s:Hi('cssStringQ'      , 'NONE' , s:lightGreen  , 'NONE')
call s:Hi('cssTagName'      , 'NONE' , s:cText       , 'bold')
call s:Hi('cssValueNumber'  , 'NONE' , s:lightYellow , 'NONE')
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
call s:Hi('sassCssAttribute'           , 'NONE' , s:cTextDark  , 'NONE')
call s:Hi('sassDefault'                , 'NONE' , s:lightBlue  , 'italic')
call s:Hi('sassInclude'                , 'NONE' , s:cTextLight , 'bold')
call s:Hi('sassInterpolationDelimiter' , 'NONE' , s:cTextLight , 'NONE')
call s:Hi('sassVariable'               , 'NONE' , s:lightRed   , 'NONE')
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
call s:Hi('phpIdentifier'     , 'NONE' , s:lightRed    , 'NONE')
call s:Hi('phpInclude'        , 'NONE' , s:lightYellow , 'bold')
call s:Hi('phpKeyword'        , 'NONE' , s:lightViolet , 'NONE')
call s:Hi('phpMemberSelector' , 'NONE' , s:lightYellow , 'NONE')
call s:Hi('phpParent'         , 'NONE' , s:cTextDark   , 'NONE')
call s:Hi('phpRegion'         , 'NONE' , s:cText       , 'NONE')
call s:Hi('phpStringDouble'   , 'NONE' , s:cTextDark   , 'NONE')
call s:Hi('phpStringSingle'   , 'NONE' , s:lightGreen  , 'NONE')
call s:Hi('phpSuperglobals'   , 'NONE' , s:lightRed    , 'bold')
call s:Hi('phpType'           , 'NONE' , s:lightBlue   , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
hi! link phpStringDelimiter phpStringSingle
hi! link phpVarSelector phpIdentifier
" }

" Markdown {
call s:Hi('markdownCodeBlock'   , 'NONE' , s:cTextExtraDark , 'NONE')
call s:Hi('markdownCode'        , 'NONE' , s:lightBlue      , 'NONE')
call s:Hi('markdownH1'          , 'NONE' , s:cTextLight     , 'bold')
call s:Hi('markdownHeadingRule' , 'NONE' , s:lightViolet    , 'bold')
call s:Hi('markdownLinkText'    , 'NONE' , s:lightBlue      , 'underline')
call s:Hi('markdownListMarker'  , 'NONE' , s:lightRed       , 'NONE')
call s:Hi('markdownURL'         , 'NONE' , s:lightYellow    , 'NONE')
call s:Hi('markdownURLTitle'    , 'NONE' , s:lightGreen     , 'NONE')
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
call s:Hi('NERDtreeBookmark'  , 'NONE'            , s:lightBlue      , 'NONE')
call s:Hi('NERDtreeCWD'       , 'NONE'            , s:lightYellow    , 'NONE')
call s:Hi('NERDtreeDir'       , 'NONE'            , s:cTextLight     , 'bold')
call s:Hi('NERDtreeFile'      , 'NONE'            , s:cText          , 'NONE')
call s:Hi('NERDtreeHelp'      , 'NONE'            , s:lightRed       , 'NONE')
call s:Hi('NERDtreeToggleOff' , s:cBackgroundDark , s:red            , 'bold')
call s:Hi('NERDtreeToggleOn'  , s:cBackgroundDark , s:green          , 'bold')
call s:Hi('NERDtreeUp'        , 'NONE'            , s:cTextExtraDark , 'NONE')
hi! link NERDtreeBookmarkName NERDtreeFile
hi! link NERDtreeBookmarksHeader NERDtreeCWD
hi! link NERDtreeClosable NERDtreeDirSlash
hi! link NERDtreeDirSlash NERDtreeCWD
hi! link NERDtreeHelpCommand NERDtreeFile
hi! link NERDtreeHelpKey NERDtreeFile
hi! link NERDtreeHelpTitle NERDtreeHelp
hi! link NERDtreeOpenable NERDtreeDirSlash
" }
