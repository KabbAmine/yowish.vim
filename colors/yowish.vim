" Yowish colorscheme.

" Version      : 0.5.3
" Creation     : 2015-01-09
" Modification : 2015-10-16
" Maintainer   : Kabbaj Amine <amine.kabb@gmail.com>
" License      : This file is placed in the public domain.

" Initialization {{{1
set background=dark
hi clear
if exists('syntax_on')
	syntax reset
endif
let g:colors_name = 'yowish'
" 1}}}

" Colors (.group[hex, term256]) {{{1
let s:color = {
			\ 'background'       : ['#222222', '235'],
			\ 'backgroundDark'   : ['#0e0e0e', '232'],
			\ 'backgroundLight'  : ['#393939', '236'],
			\ 'text'             : ['#cbcbcb', '251'],
			\ 'textDark'         : ['#bebebe', '249'],
			\ 'textExtraDark'    : ['#8c8c8c', '244'],
			\ 'textLight'        : ['#ebebeb', '255'],
			\ 'selected'         : ['#373B41', '234'],
			\ 'columnBackground' : ['#222222', '235'],
			\ 'columnElements'   : ['#6e6e6e', '242'],
			\ 'comment'          : ['#6e6e6e', '242'],
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
	for l:i in (range(0, len(l:params)-1))
		let l:command .= ' ' . l:params[l:i] . 'bg=' . l:bgColor[l:i] . ' ' . l:params[l:i] . 'fg=' . l:fgColor[l:i]
		let l:command .= ' ' . l:params[l:i] . '=' . a:option
	endfor
	exe l:command
endfun
" 1}}}

" *********************
" Highlighting
" *********************

" Normal syntax groups {{{1
call s:Hi('Constant'  , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('PreProc'   , 'NONE' , s:color.lightViolet , 'NONE')
call s:Hi('Statement' , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('String'    , 'NONE' , s:color.lightGreen  , 'NONE')
hi! link Character String
" Default {{{1
call s:Hi('Comment'      , 'NONE'                   , s:color.comment         , 'NONE')
call s:Hi('Conceal'      , 'NONE'                   , s:color.backgroundLight , 'NONE')
call s:Hi('CursorLineNr' , 'NONE'                   , s:color.lightYellow     , 'NONE')
call s:Hi('CursorLine'   , s:color.backgroundLight  , 'NONE'                  , 'NONE')
call s:Hi('Cursor'       , s:color.text             , s:color.backgroundDark  , 'NONE')
call s:Hi('DiffAdd'      , 'NONE'                   , s:color.green           , 'NONE')
call s:Hi('DiffChange'   , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('DiffDelete'   , 'NONE'                   , s:color.red             , 'NONE')
call s:Hi('DiffText'     , 'NONE'                   , s:color.textDark        , 'NONE')
call s:Hi('Directory'    , 'NONE'                   , s:color.textDark        , 'NONE')
call s:Hi('ErrorMsg'     , s:color.red              , s:color.text            , 'bold')
call s:Hi('Error'        , 'NONE'                   , s:color.red             , 'bold')
call s:Hi('FoldColumn'   , s:color.columnBackground , s:color.columnElements  , 'NONE')
call s:Hi('Identifier'   , 'NONE'                   , s:color.lightBlue       , 'NONE')
call s:Hi('IncSearch'    , s:color.lightYellow      , s:color.background      , 'NONE')
call s:Hi('LineNr'       , 'NONE'                   , s:color.backgroundLight , 'NONE')
call s:Hi('MatchParen'   , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('ModeMsg'      , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('Normal'       , s:color.background       , s:color.text            , 'NONE')
call s:Hi('PmenuSbar'    , s:color.selected         , s:color.lightYellow     , 'NONE')
call s:Hi('Pmenu'        , s:color.backgroundLight  , s:color.textDark        , 'NONE')
call s:Hi('PmenuSel'     , s:color.background       , s:color.text            , 'NONE')
call s:Hi('Question'     , 'NONE'                   , s:color.lightGreen      , 'bold')
call s:Hi('Search'       , s:color.yellow           , s:color.backgroundDark  , 'bold')
call s:Hi('SpecialKey'   , 'NONE'                   , s:color.backgroundLight , 'NONE')
call s:Hi('Special'      , 'NONE'                   , s:color.textLight       , 'NONE')
call s:Hi('SpellBad'     , 'NONE'                   , 'NONE'                  , 'undercurl')
call s:Hi('StatusLineNC' , s:color.backgroundLight  , s:color.text            , 'NONE')
call s:Hi('StatusLine'   , s:color.yellow           , s:color.background      , 'NONE')
call s:Hi('TabLineFill'  , 'NONE'                   , s:color.text            , 'NONE')
call s:Hi('TabLine'      , s:color.backgroundLight  , s:color.textDark        , 'NONE')
call s:Hi('TabLineSel'   , s:color.background       , s:color.yellow          , 'bold')
call s:Hi('Title'        , 'NONE'                   , s:color.lightRed        , 'NONE')
call s:Hi('Todo'         , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('Type'         , 'NONE'                   , s:color.textDark        , 'NONE')
call s:Hi('VertSplit'    , 'NONE'                   , s:color.yellow          , 'NONE')
call s:Hi('Visual'       , s:color.selected         , 'NONE'                  , 'NONE')
call s:Hi('WarningMsg'   , 'NONE'                   , s:color.yellow          , 'bold')
call s:Hi('WildMenu'     , s:color.background       , s:color.yellow          , 'NONE')
hi! link CursorColumn CursorLine
hi! link Folded FoldColumn
hi! link NonText Conceal
hi! link SignColumn FoldColumn
hi! link VisualNOS Visual
" Vim {{{1
call s:Hi('vimAutoEvent' , 'NONE' , s:color.textExtraDark , 'NONE')
call s:Hi('vimCommand'   , 'NONE' , s:color.lightRed      , 'NONE')
call s:Hi('vimContinue'  , 'NONE' , s:color.textDark      , 'NONE')
call s:Hi('vimFuncName'  , 'NONE' , s:color.lightYellow   , 'NONE')
call s:Hi('vimOper'      , 'NONE' , s:color.text          , 'NONE')
hi! link vimCommentString Comment
hi! link vimCommentTitle Comment
hi! link vimEchoHLNone vimOper
hi! link vimFunc vimFuncName
hi! link vimGroup vimFuncName
hi! link vimHiGroup vimFuncName
hi! link vimIsCommand vimCommand
hi! link vimMapModKey vimOper
hi! link vimMapMod vimOper
hi! link vimSep vimOper
hi! link vimUserCmd vimCommand
hi! link vimNotation vimOper
hi! link vimOperParen vimOper
hi! link vimParenSep vimOper
hi! link vimSynType vimFuncName
" Vimhelp {{{1
call s:Hi('helpExample'        , 'NONE' , s:color.textExtraDark , 'NONE')
call s:Hi('helpHyperTextEntry' , 'NONE' , s:color.lightRed      , 'bold')
call s:Hi('helpHyperTextJump'  , 'NONE' , s:color.lightYellow   , 'NONE')
hi! link helpOption helpExample
hi! link helpSectionDelim helpExample
" HTML {{{1
call s:Hi('HtmlArg'         , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('HtmlH1'          , 'NONE' , s:color.text        , 'NONE')
call s:Hi('HtmlLink'        , 'NONE' , s:color.text        , 'underline')
call s:Hi('HtmlSpecialChar' , 'NONE' , s:color.textDark    , 'NONE')
call s:Hi('HtmlTagName'     , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('HtmlTitle'       , 'NONE' , s:color.text        , 'bold')
call s:Hi('HtmlUnderline'   , 'NONE' , 'NONE'              , 'underline')
" For https://github.com/othree/html5.vim
hi! link HtmlScriptTag HtmlTagName
hi! link HtmlSpecialTagName HtmlTagName
" CSS {{{1
call s:Hi('cssAttr'        , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('cssDefinition'  , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('cssFunction'    , 'NONE' , s:color.text        , 'NONE')
call s:Hi('cssIdentifier'  , 'NONE' , s:color.lightViolet , 'bold')
call s:Hi('cssImportant'   , 'NONE' , s:color.lightBlue   , 'italic')
call s:Hi('cssMedia'       , 'NONE' , s:color.textLight   , 'NONE')
call s:Hi('cssProp'        , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('cssPseudoClass' , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('cssTagName'     , 'NONE' , s:color.text        , 'bold')
hi! link cssAttrComma cssFunction
hi! link cssBraces cssTagName
hi! link cssClassName cssFunction
hi! link cssColor cssAttr
hi! link cssFunctionComma cssFunction
hi! link cssFunctionName cssFunction
hi! link cssMediaKeyword cssMedia
hi! link cssPseudoClassFn cssPseudoClass
hi! link cssPseudoClassId cssPseudoClass
hi! link cssPseudoClassLAng cssPseudoClass
hi! link cssUnicodeEscape cssAttr
hi! link cssUnitDecorators cssAttr
hi! link cssValueAngle cssAttr
hi! link cssValueFrequency cssAttr
hi! link cssValueInteger cssAttr
hi! link cssValueLength cssAttr
hi! link cssValueNumber cssAttr
hi! link cssValueTime cssAttr
" SASS & SCSS {{{1
call s:Hi('sassCssAttribute' , 'NONE' , s:color.textDark  , 'NONE')
call s:Hi('sassDefault'      , 'NONE' , s:color.lightBlue , 'italic')
call s:Hi('sassInclude'      , 'NONE' , s:color.textLight , 'bold')
call s:Hi('sassVariable'     , 'NONE' , s:color.lightRed  , 'NONE')
hi! link sassClassChar sassClass
hi! link sassClass cssClassName
hi! link sassControl sassInclude
hi! link sassDefinition cssDefinition
hi! link sassFunction cssFunctionName
hi! link sassIdChar sassId
hi! link sassId cssIdentifier
hi! link sassMixing sassInclude
hi! link sassMixin sassInclude
hi! link sassProperty cssProp
" PHP {{{1
call s:Hi('phpIdentifier'       , 'NONE' , s:color.lightRed    , 'NONE')
call s:Hi('phpInclude'          , 'NONE' , s:color.lightYellow , 'bold')
call s:Hi('phpKeyword'          , 'NONE' , s:color.lightViolet , 'NONE')
call s:Hi('phpMemberSelector'   , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('phpParent'           , 'NONE' , s:color.textDark    , 'NONE')
call s:Hi('phpRegion'           , 'NONE' , s:color.text        , 'NONE')
call s:Hi('phpType'             , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('phpVarSelector'      , 'NONE' , s:color.lightRed    , 'NONE')
hi! link phpFunctions phpRegion
hi! link phpOperator Delimiter
" For https://github.com/StanAngeloff/php.vim
call s:Hi('phpSuperglobals'   , 'NONE' , s:color.lightRed    , 'bold')
hi! link phpStaticClasses phpSuperglobals
hi! link phpStrEsc phpMemberSelector
" Markdown {{{1
call s:Hi('markdownBlockquote'  , 'NONE' , s:color.lightBlue     , 'NONE')
call s:Hi('markdownCodeBlock'   , 'NONE' , s:color.textExtraDark , 'NONE')
call s:Hi('markdownCode'        , 'NONE' , s:color.lightGreen    , 'NONE')
call s:Hi('markdownH1'          , 'NONE' , s:color.textLight     , 'bold')
call s:Hi('markdownHeadingRule' , 'NONE' , s:color.lightViolet   , 'bold')
call s:Hi('markdownLinkText'    , 'NONE' , s:color.lightBlue     , 'underline')
call s:Hi('markdownListMarker'  , 'NONE' , s:color.lightRed      , 'NONE')
call s:Hi('markdownUrl'         , 'NONE' , s:color.lightYellow   , 'NONE')
hi! link markdownCodeDelimiter markdownCode
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownHeadingDelimiter markdownHeadingRule
hi! link markdownIdDeclaration markdownLinkText
hi! link markdownRule markdownCodeBlock
hi! link markdownURLTitleDelimiter markdownUrl
" For https://github.com/gabrielelana/vim-markdown
call s:Hi('markdownLinkReference', 'NONE', s:color.textDark, 'NONE')
hi! link markdownBlockquoteDelimiter markdownBlockquote
hi! link markdownEmoticonKeyword markdownH1
hi! link markdownInlineCode markdownCode
hi! link markdownItemDelimiter markdownListMarker
hi! link markdownLinkUrl markdownUrl
" Javascript {{{1
call s:Hi('javaScriptBraces'     , 'NONE' , s:color.textLight   , 'bold')
call s:Hi('javaScriptIdentifier' , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('javaScriptNumber'     , 'NONE' , s:color.lightRed    , 'NONE')
" For https://github.com/othree/yajs.vim
call s:Hi('JavascriptBlock'    , 'NONE' , s:color.textDark    , 'NONE')
call s:Hi('JavascriptExport'   , 'NONE' , 'NONE'              , 'bold')
call s:Hi('JavascriptOpSymbol' , 'NONE' , s:color.lightViolet , 'NONE')
hi! link JavascriptDotNotation javaScriptIdentifier
hi! link JavascriptLogicSymbol JavascriptOpSymbol
hi! link JavascriptOpSymbols JavascriptOpSymbol
hi! link javascriptVariable javaScriptIdentifier
" For https://github.com/pangloss/vim-javascript
call s:Hi('JsFuncBlock'     , 'NONE' , s:color.textDark    , 'NONE')
call s:Hi('jsFuncCall'      , 'NONE' , s:color.lightBlue   , 'NONE')
call s:Hi('jsGlobalObjects' , 'NONE' , 'NONE'              , 'bold')
call s:Hi('jsOperator'      , 'NONE' , s:color.lightViolet , 'NONE')
hi! link jsFunction javaScriptIdentifier
hi! link jsNoise javaScriptIdentifier
hi! link jsStorageClass javaScriptIdentifier
" Ruby {{{1
call s:Hi('rubyBlock'    , 'NONE' , 'NONE'              , 'bold')
call s:Hi('rubyConstant' , 'NONE' , s:color.lightYellow , 'NONE')
call s:Hi('rubyFunction' , 'NONE' , s:color.lightYellow , 'NONE')
" NERDtree plugin {{{1
call s:Hi('NERDtreeBookmark'  , 'NONE'                 , s:color.lightBlue     , 'NONE')
call s:Hi('NERDtreeCWD'       , 'NONE'                 , s:color.lightYellow   , 'NONE')
call s:Hi('NERDtreeDir'       , 'NONE'                 , s:color.textLight     , 'bold')
call s:Hi('NERDtreeFile'      , 'NONE'                 , s:color.text          , 'NONE')
call s:Hi('NERDtreeHelp'      , 'NONE'                 , s:color.lightRed      , 'NONE')
call s:Hi('NERDtreeToggleOff' , s:color.backgroundDark , s:color.red           , 'bold')
call s:Hi('NERDtreeToggleOn'  , s:color.backgroundDark , s:color.green         , 'bold')
call s:Hi('NERDtreeUp'        , 'NONE'                 , s:color.textExtraDark , 'NONE')
hi! link NERDtreeBookmarkName NERDtreeFile
hi! link NERDtreeBookmarksHeader NERDtreeCWD
hi! link NERDtreeClosable NERDtreeDirSlash
hi! link NERDtreeDirSlash NERDtreeCWD
hi! link NERDtreeHelpCommand NERDtreeFile
hi! link NERDtreeHelpKey NERDtreeFile
hi! link NERDtreeHelpTitle NERDtreeHelp
hi! link NERDtreeOpenable NERDtreeDirSlash
" CtrlP plugin {{{1
call s:Hi('CtrlPLinePre'   , 'NONE' , s:color.text        , 'NONE')
call s:Hi('CtrlPMatch'     , 'NONE' , s:color.lightYellow , 'bold')
call s:Hi('CtrlPMode1'     , 'NONE' , s:color.textDark    , 'NONE')
call s:Hi('CtrlPNoEntries' , 'NONE' , s:color.red         , 'bold')
call s:Hi('CtrlPPrtCursor' , 'NONE' , s:color.lightYellow , 'underline')
hi! link CtrlPPrtBase CtrlPMatch
" 1}}}

" Cleaning {{{1
unlet s:color
delfunction s:Hi
" 1}}}

" vim:ft=vim:fdm=marker:fmr={{{,}}}:
