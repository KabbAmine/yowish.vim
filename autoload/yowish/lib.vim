fun! yowish#lib#hi(groupName, bgColor, fgColor, option)
	" Set higlighting colors of specified group name
	
	let l:bgColor = type(a:bgColor) == type('NONE') ? ['NONE', 'NONE'] : a:bgColor
	let l:fgColor = type(a:fgColor) == type('NONE') ? ['NONE', 'NONE'] : a:fgColor

	let l:command = 'hi ' . a:groupName
	let l:params = ['gui', 'cterm']
	for i in (range(0, len(l:params)-1))
		let l:command .= ' '.l:params[i].'bg='.l:bgColor[i].' '.l:params[i].'fg='.l:fgColor[i]
		let l:command .= ' '.l:params[i].'='.a:option
	endfor

	exe l:command
endfun
