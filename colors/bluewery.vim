" 8      8
" 8      8
" 8oPYo. 8 o    o .oPYo. o   o   o .oPYo. oPYo. o    o
" 8    8 8 8    8 8oooo8 Y. .P. .P 8oooo8 8  `' 8    8
" 8    8 8 8    8 8.     `b.d'b.d' 8.     8     8    8
" `YooP' 8 `YooP' `Yooo'  `Y' `Y'  `Yooo' 8     `YooP8
" :.....:..:.....::.....:::..::..:::.....:..:::::....8
" ::::::::::::::::::::::::::::::::::::::::::::::::ooP'.
" ::::::::::::::::::::::::::::::::::::::::::::::::...::
"
" File:       bluewery.vim
" Maintainer: relastle <relastle@gmail.com>
" Modified:   2019-11-09 01:05
" License:    MIT
"

" Below are visual identity of this color scheme
let s:n_black   = [0, '#07242c']
let s:n_red     = [1, '#fc6195']
let s:n_green   = [2, '#5AC6A1']
let s:n_yellow  = [3, '#fff1ac']
let s:n_blue    = [4, '#296873']
let s:n_magenta = [5, '#85919b']
let s:n_cyan    = [6, '#04a7a7']
let s:n_white   = [7, '#c4c7c7']

let s:b_black   = [8, '#142c35']
let s:b_red     = [9, '#fc81a5']
let s:b_green   = [10, '#233439']
let s:b_yellow  = [11, '#DF7353']
let s:b_blue    = [12, '#6FaEaF']
let s:b_magenta = [13, '#364f6b']
let s:b_cyan    = [14, '#94e7e7']
let s:b_white   = [15, '#dafafc']

let s:none_color   = ['NONE', 'NONE']

function! s:my_hi(item, attr, fg_color_name, bg_color_name) abort
  if empty(a:attr) && empty(a:bg_color_name)
    execute printf('hi! %s ctermfg=%d guifg=%s', a:item, a:fg_color_name[0], a:fg_color_name[1])
    return
  endif

  if empty(a:attr) && empty(a:fg_color_name)
    execute printf('hi! %s ctermbg=%d guibg=%s', a:item, a:bg_color_name[0], a:bg_color_name[1])
    return
  endif

  if empty(a:attr)
    execute printf('hi! %s ctermfg=%d guifg=%s ctermbg=%d guibg=%s', a:item, a:fg_color_name[0], a:fg_color_name[1], a:bg_color_name[0], a:bg_color_name[1])
    return
  endif

  execute printf('hi! %s ctermfg=%d guifg=%s ctermbg=%d guibg=%s gui=%s', a:item, a:fg_color_name[0], a:fg_color_name[1], a:bg_color_name[0], a:bg_color_name[1], a:attr)
endfunction

if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'bluewery'

" Basic Settings
call s:my_hi('Normal',     '', s:n_white,   s:b_black)
call s:my_hi('Comment',    '', s:n_blue,    '')
call s:my_hi('Statement',  '', s:b_cyan,    '')
call s:my_hi('Function',   '', s:n_cyan,    '')
call s:my_hi('Identifier', '', s:b_blue,    '')
call s:my_hi('Constant',   '', s:n_magenta, '')
call s:my_hi('Operator',   '', s:b_yellow,  '')
call s:my_hi('PreProc',    '', s:n_red,     '')
call s:my_hi('String',     '', s:n_green,   '')
call s:my_hi('Delimiter',  '', s:n_magenta, '')
call s:my_hi('Title',      '', s:n_cyan,    '')
call s:my_hi('Underlined', '', s:b_red,     '')
call s:my_hi('NonText',    '', s:n_magenta, '')
call s:my_hi('Ignore',     '', s:n_magenta, '')
call s:my_hi('Todo',       '', s:b_yellow,  s:none_color)
call s:my_hi('Search',     '', '',          s:n_yellow)
call s:my_hi('Special',    '', s:b_yellow,  '')
call s:my_hi('Visual',     '', '',          s:b_magenta)
call s:my_hi('MatchParen', '', s:b_green,   s:n_magenta)

call s:my_hi('Folded',           '', s:b_yellow,  s:n_blue)

call s:my_hi('StatusLine',       '', s:b_green,   s:b_cyan)
call s:my_hi('WildMenu',         '', s:b_green,   s:n_magenta)
call s:my_hi('ModeMsg',          '', s:n_yellow,  '')

call s:my_hi('Cursor',           'reverse', s:b_white,   s:n_black)
call s:my_hi('CursorLine',       '', '',          s:n_black)
call s:my_hi('CursorColumn',     '', '',          s:n_black)

call s:my_hi('SignColumn',       '', '',          s:n_black)

call s:my_hi('LineNr',           '', s:n_blue,    s:n_black)
call s:my_hi('CursorLineNr',     '', s:n_white,   '')
call s:my_hi('VertSplit',        '', s:n_black,   '')

call s:my_hi('PmenuSbar',        '', '',          s:n_cyan)
call s:my_hi('PmenuThumb',       '', '',          s:n_black)
call s:my_hi('Pmenu',            '', s:n_white,   s:b_green)
call s:my_hi('PmenuSel',         '', s:b_white,   s:n_blue)

call s:my_hi('Directory',        '', s:b_blue,    '')
call s:my_hi('Type',             '', s:b_cyan,    '')
call s:my_hi('Include',          '', s:n_red,     '')

call s:my_hi("TabLineFill", '', s:n_black, '')
call s:my_hi("TabLine",     '', s:n_white, s:b_green)
call s:my_hi("TabLineSel",  '', s:n_white, s:n_blue)

call s:my_hi('Error',            '', s:b_red,     s:none_color)
call s:my_hi('ErrorMsg',         '', s:b_red,     s:none_color)
call s:my_hi('WarningMsg',       '', s:n_yellow,  s:none_color)
call s:my_hi('WarningMsg',       '', s:n_yellow,  s:none_color)
call s:my_hi('ExtraWhitespace',  '', '',          s:n_red)

call s:my_hi("DiffAdd",    '', '',          s:b_green)
call s:my_hi("DiffChange", '', '',          s:b_magenta)
call s:my_hi("DiffDelete", '', s:b_magenta, s:n_red)
call s:my_hi("DiffText",   '', s:n_blue,    s:none_color)

" For 'nathanaelkane/vim-indent-guides'
call s:my_hi('IndentGuidesOdd',  '', '',          s:n_black)
call s:my_hi('IndentGuidesEven', '', '',          s:b_green)

" For 'SirVer/ultisnips'
hi! link snipLeadingSpaces Normal

" For Golang
call s:my_hi('goImport',         '', s:n_red,     '')

" For Vimscript
call s:my_hi('vimIsCommand',     '', s:n_cyan,    '')

" For ALE
call s:my_hi('ALEWarningSign',   '', s:n_yellow,  '')
call s:my_hi('ALEErrorSign',     '', s:n_red,     '')
call s:my_hi('ALEError',         '', s:none_color,  '')
call s:my_hi('ALEWarning',       '', s:none_color,  '')

" For sneak.vim
call s:my_hi('Sneak',      '', '', s:n_red)
call s:my_hi('SneakScope', '', '', s:n_red)

" For vim-illuminate
call s:my_hi('illuminatedWord',  '', s:none_color,  s:n_blue)


if has('nvim')
  let g:terminal_color_0  = s:n_black[1]
  let g:terminal_color_1  = s:n_red[1]
  let g:terminal_color_2  = s:n_green[1]
  let g:terminal_color_3  = s:n_yellow[1]
  let g:terminal_color_4  = s:n_blue[1]
  let g:terminal_color_5  = s:n_magenta[1]
  let g:terminal_color_6  = s:n_cyan[1]
  let g:terminal_color_7  = s:n_white[1]

  let g:terminal_color_8  = s:b_black[1]
  let g:terminal_color_9  = s:b_red[1]
  let g:terminal_color_10 = s:b_green[1]
  let g:terminal_color_11 = s:b_yellow[1]
  let g:terminal_color_12 = s:b_blue[1]
  let g:terminal_color_13 = s:b_magenta[1]
  let g:terminal_color_14 = s:b_cyan[1]
  let g:terminal_color_15 = s:b_white[1]
else
  let g:terminal_ansi_colors = [
        \ s:n_black[1], s:n_red[1], s:n_green[1], s:n_yellow[1], s:n_blue[1], s:n_magenta[1], s:n_cyan[1], s:n_white[1],
        \ s:b_black[1], s:b_red[1], s:b_green[1], s:b_yellow[1], s:b_blue[1], s:b_magenta[1], s:b_cyan[1], s:b_white[1],
        \ ]
endif
