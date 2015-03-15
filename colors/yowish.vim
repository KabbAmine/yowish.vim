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
let s:cBackground       = yowish#colors#cBackground
let s:cBackgroundDark   = yowish#colors#cBackgroundDark
let s:cBackgroundLight  = yowish#colors#cBackgroundLight
let s:cText             = yowish#colors#cText
let s:cTextDark         = yowish#colors#cTextDark
let s:cTextExtraDark    = yowish#colors#cTextExtraDark
let s:cTextLight        = yowish#colors#cTextLight
let s:cSelected         = yowish#colors#cSelected
let s:cColumnBackground = s:cBackground
let s:cColumnElements   = yowish#colors#cColumnElements

let s:cComment          = yowish#colors#cComment

let s:red               = yowish#colors#red
let s:green             = yowish#colors#green
let s:yellow            = yowish#colors#yellow

let s:lightRed          = yowish#colors#lightRed
let s:lightGreen        = yowish#colors#lightGreen
let s:lightYellow       = yowish#colors#lightYellow
let s:lightBlue         = yowish#colors#lightBlue
let s:lightViolet       = yowish#colors#lightViolet
" }

" *********************
" Highlighting
" *********************

" Default {
call yowish#lib#hi('Comment'      , 'NONE'              , s:cComment         , 'NONE')
call yowish#lib#hi('Conceal'      , 'NONE'              , s:cBackgroundLight , 'NONE')
call yowish#lib#hi('Constant'     , 'NONE'              , s:lightRed         , 'NONE')
call yowish#lib#hi('CursorLineNr' , 'NONE'              , s:lightYellow      , 'NONE')
call yowish#lib#hi('CursorLine'   , s:cBackgroundLight  , 'NONE'             , 'NONE')
call yowish#lib#hi('Cursor'       , s:cText             , s:cBackgroundDark  , 'NONE')
call yowish#lib#hi('DiffAdd'      , 'NONE'              , s:green            , 'NONE')
call yowish#lib#hi('DiffChange'   , 'NONE'              , s:yellow           , 'NONE')
call yowish#lib#hi('DiffDelete'   , 'NONE'              , s:red              , 'NONE')
call yowish#lib#hi('DiffText'     , 'NONE'              , s:cTextDark        , 'NONE')
call yowish#lib#hi('Directory'    , 'NONE'              , s:cTextDark        , 'NONE')
call yowish#lib#hi('ErrorMsg'     , s:red               , s:cText            , 'bold')
call yowish#lib#hi('Error'        , 'NONE'              , s:red              , 'bold')
call yowish#lib#hi('FoldColumn'   , s:cColumnBackground , s:cColumnElements  , 'NONE')
call yowish#lib#hi('Identifier'   , 'NONE'              , s:lightBlue        , 'NONE')
call yowish#lib#hi('IncSearch'    , s:lightYellow       , s:cBackground      , 'NONE')
call yowish#lib#hi('LineNr'       , 'NONE'              , s:cBackgroundLight , 'NONE')
call yowish#lib#hi('MatchParen'   , 'NONE'              , s:yellow           , 'bold')
call yowish#lib#hi('ModeMsg'      , 'NONE'              , s:yellow           , 'bold')
call yowish#lib#hi('Normal'       , s:cBackground       , s:cText            , 'NONE')
call yowish#lib#hi('PmenuSbar'    , s:cSelected         , s:lightYellow      , 'NONE')
call yowish#lib#hi('Pmenu'        , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call yowish#lib#hi('PmenuSel'     , s:cBackground       , s:cText            , 'NONE')
call yowish#lib#hi('PreProc'      , 'NONE'              , s:lightViolet      , 'NONE')
call yowish#lib#hi('Question'     , 'NONE'              , s:lightGreen       , 'bold')
call yowish#lib#hi('Search'       , s:yellow            , s:cBackgroundDark  , 'bold')
call yowish#lib#hi('SpecialKey'   , 'NONE'              , s:cBackgroundLight , 'NONE')
call yowish#lib#hi('Special'      , 'NONE'              , s:cTextLight       , 'NONE')
call yowish#lib#hi('SpellBad'     , 'NONE'              , 'NONE'             , 'undercurl')
call yowish#lib#hi('Statement'    , 'NONE'              , s:lightYellow      , 'NONE')
call yowish#lib#hi('StatusLineNC' , s:cBackgroundLight  , s:cText            , 'NONE')
call yowish#lib#hi('StatusLine'   , s:yellow            , s:cBackground      , 'NONE')
call yowish#lib#hi('TabLineFill'  , 'NONE'              , s:cText            , 'NONE')
call yowish#lib#hi('TabLine'      , s:cBackgroundLight  , s:cTextDark        , 'NONE')
call yowish#lib#hi('TabLineSel'   , s:cBackground       , s:yellow           , 'bold')
call yowish#lib#hi('Title'        , 'NONE'              , s:lightRed         , 'NONE')
call yowish#lib#hi('Todo'         , 'NONE'              , s:yellow           , 'NONE')
call yowish#lib#hi('Type'         , 'NONE'              , s:cTextDark        , 'NONE')
call yowish#lib#hi('VertSplit'    , 'NONE'              , s:yellow           , 'NONE')
call yowish#lib#hi('Visual'       , s:cSelected         , 'NONE'             , 'NONE')
call yowish#lib#hi('WarningMsg'   , 'NONE'              , s:yellow           , 'bold')
call yowish#lib#hi('WildMenu'     , s:cBackground       , s:yellow           , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" }

" Vim {
call yowish#lib#hi('vimAutoEvent' , 'NONE' , s:cTextExtraDark , 'NONE')
call yowish#lib#hi('vimCommand'   , 'NONE' , s:lightRed       , 'NONE')
call yowish#lib#hi('vimContinue'  , 'NONE' , s:cTextDark      , 'NONE')
call yowish#lib#hi('vimFuncName'  , 'NONE' , s:lightYellow    , 'NONE')
call yowish#lib#hi('vimOper'      , 'NONE' , s:cText          , 'NONE')
call yowish#lib#hi('vimOption'    , 'NONE' , s:lightViolet    , 'NONE')
call yowish#lib#hi('vimString'    , 'NONE' , s:lightGreen     , 'NONE')
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
call yowish#lib#hi('helpExample'      , 'NONE' , s:cTextExtraDark , 'NONE')
call yowish#lib#hi('helpOption'       , 'NONE' , s:cTextExtraDark , 'NONE')
call yowish#lib#hi('helpSectionDelim' , 'NONE' , s:cTextExtraDark , 'NONE')
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
call yowish#lib#hi('HtmlArg'         , 'NONE' , s:lightYellow , 'NONE')
call yowish#lib#hi('HtmlBold'        , 'NONE' , 'NONE'        , 'bold')
call yowish#lib#hi('HtmlH1'          , 'NONE' , s:cText       , 'NONE')
call yowish#lib#hi('HtmlItalic'      , 'NONE' , 'NONE'        , 'italic')
call yowish#lib#hi('HtmlLink'        , 'NONE' , s:cText       , 'underline')
call yowish#lib#hi('HtmlSpecialChar' , 'NONE' , s:cTextDark   , 'NONE')
call yowish#lib#hi('HtmlString'      , 'NONE' , s:lightGreen  , 'NONE')
call yowish#lib#hi('HtmlTagName'     , 'NONE' , s:lightRed    , 'NONE')
call yowish#lib#hi('HtmlTitle'       , 'NONE' , s:cText       , 'bold')
call yowish#lib#hi('HtmlUnderline'   , 'NONE' , 'NONE'        , 'underline')
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
call yowish#lib#hi('cssAttrComma'    , 'NONE' , s:lightViolet , 'NONE')
call yowish#lib#hi('cssAttr'         , 'NONE' , s:lightYellow , 'NONE')
call yowish#lib#hi('cssClassName'    , 'NONE' , s:lightViolet , 'NONE')
call yowish#lib#hi('cssDefinition'   , 'NONE' , s:lightBlue   , 'NONE')
call yowish#lib#hi('cssFunction'     , 'NONE' , s:cText       , 'NONE')
call yowish#lib#hi('cssIdentifier'   , 'NONE' , s:lightViolet , 'bold')
call yowish#lib#hi('cssImportant'    , 'NONE' , s:lightBlue   , 'italic')
call yowish#lib#hi('cssMediaKeyword' , 'NONE' , s:cTextLight  , 'bold')
call yowish#lib#hi('cssMedia'        , 'NONE' , s:cTextLight  , 'NONE')
call yowish#lib#hi('cssProp'         , 'NONE' , s:lightBlue   , 'NONE')
call yowish#lib#hi('cssPseudoClass'  , 'NONE' , s:lightRed    , 'NONE')
call yowish#lib#hi('cssStringQ'      , 'NONE' , s:lightGreen  , 'NONE')
call yowish#lib#hi('cssTagName'      , 'NONE' , s:cText       , 'bold')
call yowish#lib#hi('cssValueNumber'  , 'NONE' , s:lightYellow , 'NONE')
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
call yowish#lib#hi('sassCssAttribute'           , 'NONE' , s:cTextDark  , 'NONE')
call yowish#lib#hi('sassDefault'                , 'NONE' , s:lightBlue  , 'italic')
call yowish#lib#hi('sassInclude'                , 'NONE' , s:cTextLight , 'bold')
call yowish#lib#hi('sassInterpolationDelimiter' , 'NONE' , s:cTextLight , 'NONE')
call yowish#lib#hi('sassVariable'               , 'NONE' , s:lightRed   , 'NONE')
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
call yowish#lib#hi('phpIdentifier'     , 'NONE' , s:lightRed  , 'NONE')
call yowish#lib#hi('phpInclude'        , 'NONE' , s:lightYellow , 'bold')
call yowish#lib#hi('phpKeyword'        , 'NONE' , s:lightViolet , 'NONE')
call yowish#lib#hi('phpMemberSelector' , 'NONE' , s:lightYellow , 'NONE')
call yowish#lib#hi('phpParent'         , 'NONE' , s:cTextDark   , 'NONE')
call yowish#lib#hi('phpRegion'         , 'NONE' , s:cText       , 'NONE')
call yowish#lib#hi('phpStringDouble'   , 'NONE' , s:cTextDark   , 'NONE')
call yowish#lib#hi('phpStringSingle'   , 'NONE' , s:lightGreen  , 'NONE')
call yowish#lib#hi('phpSuperglobals'   , 'NONE' , s:lightRed    , 'bold')
call yowish#lib#hi('phpType'           , 'NONE' , s:lightBlue   , 'NONE')
call yowish#lib#hi('phpVarSelector'    , 'NONE' , s:lightRed    , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
hi! link phpStringDelimiter phpStringSingle
" }

" Markdown {
call yowish#lib#hi('markdownCodeBlock'   , 'NONE' , s:cTextExtraDark , 'NONE')
call yowish#lib#hi('markdownCode'        , 'NONE' , s:lightBlue      , 'NONE')
call yowish#lib#hi('markdownH1'          , 'NONE' , s:cTextLight     , 'bold')
call yowish#lib#hi('markdownHeadingRule' , 'NONE' , s:lightViolet    , 'bold')
call yowish#lib#hi('markdownLinkText'    , 'NONE' , s:lightBlue      , 'underline')
call yowish#lib#hi('markdownListMarker'  , 'NONE' , s:lightRed       , 'NONE')
call yowish#lib#hi('markdownURL'         , 'NONE' , s:lightYellow    , 'NONE')
call yowish#lib#hi('markdownURLTitle'    , 'NONE' , s:lightGreen     , 'NONE')
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
call yowish#lib#hi('NERDtreeBookmark'  , 'NONE'            , s:lightBlue      , 'NONE')
call yowish#lib#hi('NERDtreeCWD'       , 'NONE'            , s:lightYellow    , 'NONE')
call yowish#lib#hi('NERDtreeDir'       , 'NONE'            , s:cTextLight     , 'bold')
call yowish#lib#hi('NERDtreeFile'      , 'NONE'            , s:cText          , 'NONE')
call yowish#lib#hi('NERDtreeHelp'      , 'NONE'            , s:lightRed       , 'NONE')
call yowish#lib#hi('NERDtreeToggleOff' , s:cBackgroundDark , s:red            , 'bold')
call yowish#lib#hi('NERDtreeToggleOn'  , s:cBackgroundDark , s:green          , 'bold')
call yowish#lib#hi('NERDtreeUp'        , 'NONE'            , s:cTextExtraDark , 'NONE')
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
call yowish#lib#hi('CtrlPLinePre'   , 'NONE' , s:cText       , 'NONE')
call yowish#lib#hi('CtrlPMatch'     , 'NONE' , s:lightYellow , 'bold')
call yowish#lib#hi('CtrlPMode1'     , 'NONE' , s:cTextDark   , 'NONE')
call yowish#lib#hi('CtrlPNoEntries' , 'NONE' , s:red         , 'bold')
call yowish#lib#hi('CtrlPPrtCursor' , 'NONE' , s:lightYellow , 'underline')
hi! link CtrlPPrtBase CtrlPMatch
" }
