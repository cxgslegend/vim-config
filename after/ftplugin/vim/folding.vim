" If the function returns 0 for a line it indicates that the line is not part
" part of the fold. However if it returns 1, it indicates that that line has a
" fold level of 1.
"
" "0"               ->     The line is not in a fold
" "1", "2", ...     ->     The line is in a fold with this level
" "="               ->     Use fold level from the previous line
" ">1", ">2"        ->     A fold with this level starts at this line
function! VimFolds()
	let thisline = getline(v:lnum)
	let nextline = getline(v:lnum+1)
	if (match(thisline, '\v^""+') >= 0) && (match(nextline, '\v^"\s+"$') >= 0)
		return ">1"
	else
		return "="
	endif
	return "1"
endfunction
setlocal foldmethod=expr
setlocal foldexpr=VimFolds()

function! VimFoldText()
	let foldsize =(v:foldend-v:foldstart)
	return getline(v:foldstart+2).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=VimFoldText()

