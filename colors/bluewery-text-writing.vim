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
" File:       bluewery-text-writing.vim
" Maintainer: relastle <relastle@gmail.com>
" Modified:   2019-11-09 01:05
" License:    MIT
"

" Below are visual identity of this color scheme
let s:n_black   = [0, '#444448']
let s:n_red     = [1, '#fc6195']
let s:n_green   = [2, '#4c8d77']
let s:n_yellow  = [3, '#ffff00']
let s:n_blue    = [4, '#2b5860']
let s:n_magenta = [5, '#7b8791']
let s:n_cyan    = [6, '#007777']
let s:n_white   = [7, '#f5f5f5']

let s:b_black   = [8, '#252529']
let s:b_red     = [9, '#fc81a5']
let s:b_green   = [10, '#b5ab95']
let s:b_yellow  = [11, '#ffff00']
let s:b_blue    = [12, '#428182']
let s:b_magenta = [13, '#c7c1aa']
let s:b_cyan    = [14, '#b7c1aa']
let s:b_white   = [15, '#ffffff']

let s:none_color   = ['NONE', 'NONE']

" Custom color
let s:search_color = [3, '#b58cab']

set background=light
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'bluewery-text-writing'

" Basic Settings
call bluewery#hi('Normal',     '', s:b_black,    s:b_white)
call bluewery#hi('Comment',    '', s:n_magenta,  '')
call bluewery#hi('Statement',  '', s:b_blue,     '')
call bluewery#hi('Function',   '', s:n_cyan,     '')
call bluewery#hi('Identifier', '', s:n_blue,     '')
call bluewery#hi('Constant',   '', s:n_magenta,  '')
call bluewery#hi('Operator',   '', s:n_cyan,   '')
call bluewery#hi('PreProc',    '', s:n_blue,      '')
call bluewery#hi('String',     '', s:n_green,    '')
call bluewery#hi('Delimiter',  '', s:n_magenta,  '')
call bluewery#hi('Title',      '', s:n_cyan,     '')
call bluewery#hi('Underlined', '', s:b_green,      '')
call bluewery#hi('NonText',    '', s:n_magenta,  '')
call bluewery#hi('Ignore',     '', s:n_magenta,  '')
call bluewery#hi('Todo',       '', s:b_green,   s:none_color)
call bluewery#hi('Search',     '', s:none_color, s:search_color)
call bluewery#hi('Special',    '', s:b_green,   '')
call bluewery#hi('Visual',     '', '',           s:b_magenta)
call bluewery#hi('MatchParen', '', s:b_black,    s:b_green)

call bluewery#hi('Folded'     , '' , s:b_green        , s:n_blue)

call bluewery#hi('StatusLine' , '' , s:b_green   , s:b_magenta)
call bluewery#hi('WildMenu'   , '' , s:b_green   , s:n_magenta)
call bluewery#hi('ModeMsg',          '', s:n_green,  '')

call bluewery#hi('Cursor'           , 'reverse' , s:b_black   , s:n_black)
call bluewery#hi('CursorLine'       , '' , ''        , s:n_white)
call bluewery#hi('CursorColumn'     , '' , ''        , s:n_white)

call bluewery#hi('SignColumn'       , '' , ''        , s:n_white)

call bluewery#hi('LineNr'           , '' , s:n_magenta , s:n_white)
call bluewery#hi('CursorLineNr'     , '' , s:n_blue   , '')
call bluewery#hi('VertSplit'        , '' , s:n_white   , '')

call bluewery#hi('PmenuSbar'        , '' , ''        , s:n_cyan)
call bluewery#hi('PmenuThumb'       , '' , ''        , s:n_white)
call bluewery#hi('Pmenu'            , '' , s:n_black   , s:b_green)
call bluewery#hi('PmenuSel'         , '' , s:b_black   , s:n_blue)

call bluewery#hi('Directory'        , '' , s:b_blue    , '')
call bluewery#hi('Type'             , '' , s:b_blue    , '')
call bluewery#hi('Include'          , '' , s:n_green     , '')

call bluewery#hi("TabLineFill", '', s:n_black, '')
call bluewery#hi("TabLine",     '', s:n_white, s:b_green)
call bluewery#hi("TabLineSel",  '', s:n_white, s:n_blue)

call bluewery#hi('Error'            , '' , s:b_red     , s:none_color)
call bluewery#hi('ErrorMsg'         , '' , s:b_red     , s:none_color)
call bluewery#hi('WarningMsg'       , '' , s:n_yellow  , s:none_color)
call bluewery#hi('WarningMsg'       , '' , s:n_yellow  , s:none_color)
call bluewery#hi('ExtraWhitespace'  , '' , ''        , s:n_red)

call bluewery#hi("DiffAdd",    '', '',          s:b_green)
call bluewery#hi("DiffChange", '', '',          s:b_magenta)
call bluewery#hi("DiffDelete", '', s:b_magenta, s:n_red)
call bluewery#hi("DiffText",   '', s:n_blue,    s:none_color)

" For 'nathanaelkane/vim-indent-guides'
call bluewery#hi('IndentGuidesOdd'  , '' , ''        , s:b_magenta)
call bluewery#hi('IndentGuidesEven' , '' , ''        , s:n_white)

" For 'SirVer/ultisnips'
hi! link snipLeadingSpaces Normal

" For Golang
call bluewery#hi('goImport'   , ''     , s:n_red  , '')

" For Rust
hi! link rsDocComment rustCommentLineDoc
call bluewery#hi('rustCommentLineDoc', '', s:n_magenta, '')
call bluewery#hi('rustMacro',          '', s:n_cyan,    '')
call bluewery#hi('rustModPath',        '', s:b_blue,    '')

" For shell script
call bluewery#hi('zshDeref', '', s:n_cyan, '')
call bluewery#hi('zshDerefDelim', '', s:n_magenta, '')
call bluewery#hi('zshSubst', '', s:n_cyan, '')
call bluewery#hi('zshSubstDelim', '', s:n_magenta, '')
call bluewery#hi('zshVariableDef', '', s:n_cyan, '')

" For Python
hi! link pythonRun Comment

" For Vimscript
call bluewery#hi('vimIsCommand'   , ''     , s:n_cyan , '')

" For Vim help
call bluewery#hi('helpHyperTextEntry', '', s:n_red,     '')
call bluewery#hi('helpSectionDelim',   '', s:n_magenta, '')

" For ALE
call bluewery#hi('ALEWarningSign' , '' , s:n_yellow   , '')
call bluewery#hi('ALEErrorSign'   , '' , s:n_red      , '')
call bluewery#hi('ALEError'       , '' , s:none_color , '')
call bluewery#hi('ALEWarning'     , '' , s:none_color , '')

" For sneak.vim
call bluewery#hi('Sneak',      '', s:none_color, s:search_color)
call bluewery#hi('SneakScope', '', s:none_color, s:search_color)

" For vim-illuminate
call bluewery#hi('illuminatedWord'     , '' , s:none_color , s:b_magenta)


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
