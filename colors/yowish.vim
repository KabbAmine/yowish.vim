" Yowish colorscheme.

" Version      : 0.5
" Creation     : 2015-01-09
" Modification : 2015-03-15
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

" Initialization {{{1
set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "yowish"
" 1}}}

" Colors (.group[hex, term256]) {{{1
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
" Highlighting function {{{1
fun! s:Hi(groupName, bgColor, fgColor, option)
	" Set higlighting colors of specified group name
	let l:bgColor = type(a:bgColor) ==# type('') ? ['NONE', 'NONE'] : a:bgColor
	let l:fgColor = type(a:fgColor) ==# type('') ? ['NONE', 'NONE'] : a:fgColor
	let l:command = 'hi ' . a:groupName
	let l:params = ['gui', 'cterm']
	for i in (range(0, len(l:params)-1))
		let l:command .= ' ' . l:params[i] . 'bg=' . l:bgColor[i] . ' ' . l:params[i] . 'fg=' . l:fgColor[i]
		let l:command .= ' ' . l:params[i] . '=' . a:option
	endfor
	exe l:command
endfun
" 1}}}

" *********************
" Highlighting
" *********************

" Default {{{1
call s:Hi('Comment'      , 'NONE'                   , s:color.Comment         , 'NONE')
call s:Hi('Conceal'      , 'NONE'                   , s:color.BackgroundLight , 'NONE')
call s:Hi('Constant'     , 'NONE'                   , s:color.lightRed        , 'NONE')
call s:Hi('CursorLineNr' , 'NONE'                   , s:color.lightYellow     , 'NONE')
call s:Hi('CursorLine'   , s:color.BackgroundLight  , 'NONE'                  , 'NONE')
call s:Hi('Cursor'       , s:color.Text             , s:color.BackgroundDark  , 'NONE')
call s:Hi('DiffAdd'      , 'NONE'                   , s:color.green           , 'NONE')
call s:Hi('DiffChange'   , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('DiffDelete'   , 'NONE'                   , s:color.red             , 'NONE')
call s:Hi('DiffText'     , 'NONE'                   , s:color.TextDark        , 'NONE')
call s:Hi('Directory'    , 'NONE'                   , s:color.TextDark        , 'NONE')
call s:Hi('ErrorMsg'     , s:color.red              , s:color.Text            , 'bold')
call s:Hi('Error'        , 'NONE'                   , s:color.red             , 'bold')
call s:Hi('FoldColumn'   , s:color.ColumnBackground , s:color.ColumnElements  , 'NONE')
call s:Hi('Identifier'   , 'NONE'                   , s:color.lightBlue       , 'NONE')
call s:Hi('IncSearch'    , s:color.lightYellow      , s:color.Background      , 'NONE')
call s:Hi('LineNr'       , 'NONE'                   , s:color.BackgroundLight , 'NONE')
call s:Hi('MatchParen'   , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('ModeMsg'      , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('Normal'       , s:color.Background       , s:color.Text            , 'NONE')
call s:Hi('PmenuSbar'    , s:color.Selected         , s:color.lightYellow     , 'NONE')
call s:Hi('Pmenu'        , s:color.BackgroundLight  , s:color.TextDark        , 'NONE')
call s:Hi('PmenuSel'     , s:color.Background       , s:color.Text            , 'NONE')
call s:Hi('PreProc'      , 'NONE'                   , s:color.lightViolet     , 'NONE')
call s:Hi('Question'     , 'NONE'                   , s:color.lightGreen      , 'bold')
call s:Hi('Search'       , s:color.yellow           , s:color.BackgroundDark  , 'bold')
call s:Hi('SpecialKey'   , 'NONE'                   , s:color.BackgroundLight , 'NONE')
call s:Hi('Special'      , 'NONE'                   , s:color.TextLight       , 'NONE')
call s:Hi('SpellBad'     , 'NONE'                   , 'NONE'                  , 'undercurl')
call s:Hi('Statement'    , 'NONE'                   , s:color.lightYellow     , 'NONE')
call s:Hi('StatusLineNC' , s:color.BackgroundLight  , s:color.Text            , 'NONE')
call s:Hi('StatusLine'   , s:color.yellow           , s:color.Background      , 'NONE')
call s:Hi('TabLineFill'  , 'NONE'                   , s:color.Text            , 'NONE')
call s:Hi('TabLine'      , s:color.BackgroundLight  , s:color.TextDark        , 'NONE')
call s:Hi('TabLineSel'   , s:color.Background       , s:color.yellow          , 'bold')
call s:Hi('Title'        , 'NONE'                   , s:color.lightRed        , 'NONE')
call s:Hi('Todo'         , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('Type'         , 'NONE'                   , s:color.TextDark        , 'NONE')
call s:Hi('VertSplit'    , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('Visual'       , s:color.Selected         , 'NONE'                  , 'NONE')
call s:Hi('WarningMsg'   , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('WildMenu'     , s:color.Background       , s:color.yellow          , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" Vim {{{1
call s:Hi('vimAutoEvent' , 'NONE' , s:color.TextExtraDark , 'NONE')
call s:Hi('vimCommand'   , 'NONE' , s:color.lightRed      , 'NONE')
call s:Hi('vimContinue'  , 'NONE' , s:color.TextDark      , 'NONE')
call s:Hi('vimFuncName'  , 'NONE' , s:color.lightYellow   , 'NONE')
call s:Hi('vimOper'      , 'NONE' , s:color.Text          , 'NONE')
call s:Hi('vimOption'    , 'NONE' , s:color.lightViolet   , 'NONE')
call s:Hi('vimString'    , 'NONE' , s:color.lightGreen    , 'NONE')
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
" Vimhelp {{{1
call s:Hi('helpExample'      , 'NONE' , s:color.TextExtraDark , 'NONE')
call s:Hi('helpOption'       , 'NONE' , s:color.TextExtraDark , 'NONE')
call s:Hi('helpSectionDelim' , 'NONE' , s:color.TextExtraDark , 'NONE')
hi! link helpComment Comment
hi! link helpConstant Constant
hi! link helpError Error
hi! link helpIdentifier Identifier
hi! link helpPreProc PreProc
hi! link helpSpecial Special
hi! link helpStatement Statement
hi! link helpTodo Todo
hi! link helpType Type
" HTML {{{1
call s:Hi('HtmlArg'         , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('HtmlBold'        , 'NONE' , 'NONE'              , 'bold')
call s:Hi('HtmlH1'          , 'NONE' , s:color.Text        , 'NONE')
call s:Hi('HtmlItalic'      , 'NONE' , 'NONE'              , 'italic')
call s:Hi('HtmlLink'        , 'NONE' , s:color.Text        , 'underline')
call s:Hi('HtmlSpecialChar' , 'NONE' , s:color.TextDark    , 'NONE')
call s:Hi('HtmlString'      , 'NONE' , s:color.lightGreen  , 'NONE')
call s:Hi('HtmlTagName'     , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('HtmlTitle'       , 'NONE' , s:color.Text        , 'bold')
call s:Hi('HtmlUnderline'   , 'NONE' , 'NONE'              , 'underline')
hi! link HtmlEndTag HtmlTag
hi! link HtmlH2 HtmlH1
hi! link HtmlH3 HtmlH2
hi! link HtmlH4 HtmlH3
hi! link HtmlH5 HtmlH4
hi! link HtmlH6 HtmlH5
hi! link HtmlScriptTag HtmlTagName
hi! link HtmlSpecialTagName HtmlTagName
" CSS {{{1
call s:Hi('cssAttrComma'    , 'NONE' , s:color.lightViolet , 'NONE')
call s:Hi('cssAttr'         , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('cssClassName'    , 'NONE' , s:color.lightViolet , 'NONE')
call s:Hi('cssDefinition'   , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('cssFunction'     , 'NONE' , s:color.Text        , 'NONE')
call s:Hi('cssIdentifier'   , 'NONE' , s:color.lightViolet , 'bold')
call s:Hi('cssImportant'    , 'NONE' , s:color.lightBlue   , 'italic')
call s:Hi('cssMediaKeyword' , 'NONE' , s:color.TextLight   , 'bold')
call s:Hi('cssMedia'        , 'NONE' , s:color.TextLight   , 'NONE')
call s:Hi('cssProp'         , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('cssPseudoClass'  , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('cssStringQ'      , 'NONE' , s:color.lightGreen  , 'NONE')
call s:Hi('cssTagName'      , 'NONE' , s:color.Text        , 'bold')
call s:Hi('cssValueNumber'  , 'NONE' , s:color.lightYellow , 'NONE')
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
" SCSS {{{1
call s:Hi('sassCssAttribute'           , 'NONE' , s:color.TextDark  , 'NONE')
call s:Hi('sassDefault'                , 'NONE' , s:color.lightBlue , 'italic')
call s:Hi('sassInclude'                , 'NONE' , s:color.TextLight , 'bold')
call s:Hi('sassInterpolationDelimiter' , 'NONE' , s:color.TextLight , 'NONE')
call s:Hi('sassVariable'               , 'NONE' , s:color.lightRed  , 'NONE')
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
" PHP {{{1
call s:Hi('phpIdentifier'     , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('phpInclude'        , 'NONE' , s:color.lightYellow , 'bold')
call s:Hi('phpKeyword'        , 'NONE' , s:color.lightViolet , 'NONE')
call s:Hi('phpMemberSelector' , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('phpParent'         , 'NONE' , s:color.TextDark    , 'NONE')
call s:Hi('phpRegion'         , 'NONE' , s:color.Text        , 'NONE')
call s:Hi('phpStringDouble'   , 'NONE' , s:color.TextDark    , 'NONE')
call s:Hi('phpStringSingle'   , 'NONE' , s:color.lightGreen  , 'NONE')
call s:Hi('phpSuperglobals'   , 'NONE' , s:color.lightRed    , 'bold')
call s:Hi('phpType'           , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('phpVarSelector'    , 'NONE' , s:color.lightRed    , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
hi! link phpStringDelimiter phpStringSingle
" Markdown {{{1
call s:Hi('markdownCodeBlock'   , 'NONE' , s:color.TextExtraDark , 'NONE')
call s:Hi('markdownCode'        , 'NONE' , s:color.lightBlue     , 'NONE')
call s:Hi('markdownH1'          , 'NONE' , s:color.TextLight     , 'bold')
call s:Hi('markdownHeadingRule' , 'NONE' , s:color.lightViolet   , 'bold')
call s:Hi('markdownLinkText'    , 'NONE' , s:color.lightBlue     , 'underline')
call s:Hi('markdownListMarker'  , 'NONE' , s:color.lightRed      , 'NONE')
call s:Hi('markdownURL'         , 'NONE' , s:color.lightYellow   , 'NONE')
call s:Hi('markdownURLTitle'    , 'NONE' , s:color.lightGreen    , 'NONE')
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
" NERDtree plugin {{{1
call s:Hi('NERDtreeBookmark'  , 'NONE'                 , s:color.lightBlue     , 'NONE')
call s:Hi('NERDtreeCWD'       , 'NONE'                 , s:color.lightYellow   , 'NONE')
call s:Hi('NERDtreeDir'       , 'NONE'                 , s:color.TextLight     , 'bold')
call s:Hi('NERDtreeFile'      , 'NONE'                 , s:color.Text          , 'NONE')
call s:Hi('NERDtreeHelp'      , 'NONE'                 , s:color.lightRed      , 'NONE')
call s:Hi('NERDtreeToggleOff' , s:color.BackgroundDark , s:color.red           , 'bold')
call s:Hi('NERDtreeToggleOn'  , s:color.BackgroundDark , s:color.green         , 'bold')
call s:Hi('NERDtreeUp'        , 'NONE'                 , s:color.TextExtraDark , 'NONE')
hi! link NERDtreeBookmarkName NERDtreeFile
hi! link NERDtreeBookmarksHeader NERDtreeCWD
hi! link NERDtreeClosable NERDtreeDirSlash
hi! link NERDtreeDirSlash NERDtreeCWD
hi! link NERDtreeHelpCommand NERDtreeFile
hi! link NERDtreeHelpKey NERDtreeFile
hi! link NERDtreeHelpTitle NERDtreeHelp
hi! link NERDtreeOpenable NERDtreeDirSlash
" CtrlP plugin {{{1
call s:Hi('CtrlPLinePre'   , 'NONE' , s:color.Text        , 'NONE')
call s:Hi('CtrlPMatch'     , 'NONE' , s:color.lightYellow , 'bold')
call s:Hi('CtrlPMode1'     , 'NONE' , s:color.TextDark    , 'NONE')
call s:Hi('CtrlPNoEntries' , 'NONE' , s:color.red         , 'bold')
call s:Hi('CtrlPPrtCursor' , 'NONE' , s:color.lightYellow , 'underline')
hi! link CtrlPPrtBase CtrlPMatch
" 1}}}

" Cleaning {{{1
unlet s:color
delfunction s:Hi
" 1}}}

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
