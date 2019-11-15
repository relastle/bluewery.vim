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
"

let n_black   = [0, '#07242c']
let n_red     = [1, '#fc6195']
let n_green   = [2, '#5AC6A1']
let n_yellow  = [3, '#fff1ac']
let n_blue    = [4, '#296873']
let n_magenta = [5, '#85919b']
let n_cyan    = [6, '#04a7a7']
let n_white   = [7, '#c4c7c7']

let b_black   = [8, '#142c35']
let b_red     = [9, '#fc81a5']
let b_green   = [10, '#233439']
let b_yellow  = [11, '#DF7353']
let b_blue    = [12, '#6FaEaF']
let b_magenta = [13, '#364f6b']
let b_cyan    = [14, '#94e7e7']
let b_white   = [15, '#dafafc']

let none_color   = ['NONE', 'NONE']

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
call s:my_hi('Normal'     , '' , n_white   , b_black)
call s:my_hi('Comment'    , '' , n_blue    , '')
call s:my_hi('Statement'  , '' , b_cyan    , '')
call s:my_hi('Function'   , '' , n_cyan    , '')
call s:my_hi('Identifier' , '' , b_blue    , '')
call s:my_hi('Constant'   , '' , n_magenta , '')
call s:my_hi('Operator'   , '' , b_yellow  , '')
call s:my_hi('PreProc'    , '' , n_red     , '')
call s:my_hi('String'     , '' , n_green   , '')
call s:my_hi('Delimiter'  , '' , n_magenta , '')
call s:my_hi('Title'      , '' , n_cyan    , '')
call s:my_hi('Underlined' , '' , b_red  , '')
call s:my_hi('NonText'    , '' , n_magenta , '')
call s:my_hi('Todo'       , '' , b_yellow , none_color)
call s:my_hi('Search'     , '' , ''        , n_yellow)
call s:my_hi('Special'    , '' , b_yellow  , '')
call s:my_hi('Visual'     , '' , ''        , b_magenta)

call s:my_hi('Folded'     , '' , b_yellow        , n_blue)

call s:my_hi('StatusLine' , '' , b_green   , b_cyan)
call s:my_hi('WildMenu'   , '' , b_green   , n_magenta)

call s:my_hi('Cursor'           , '' , b_white   , n_black)
call s:my_hi('CursorLine'       , '' , ''        , n_black)
call s:my_hi('CursorColumn'     , '' , ''        , n_black)

call s:my_hi('SignColumn'       , '' , ''        , n_black)

call s:my_hi('LineNr'           , '' , n_blue , n_black)
call s:my_hi('CursorLineNr'     , '' , n_white   , '')
call s:my_hi('VertSplit'        , '' , n_black   , '')

call s:my_hi('PmenuSbar'        , '' , ''        , n_cyan)
call s:my_hi('PmenuThumb'       , '' , ''        , n_black)
call s:my_hi('Pmenu'            , '' , n_white   , b_green)
call s:my_hi('PmenuSel'         , '' , b_white   , n_blue)

call s:my_hi('Directory'        , '' , b_blue    , '')
call s:my_hi('Type'             , '' , b_cyan    , '')
call s:my_hi('Include'          , '' , n_red     , '')

call s:my_hi('Error'            , '' , b_red     , none_color)
call s:my_hi('ErrorMsg'         , '' , b_red     , none_color)
call s:my_hi('WarningMsg'       , '' , n_yellow  , none_color)
call s:my_hi('WarningMsg'       , '' , n_yellow  , none_color)
call s:my_hi('ExtraWhitespace'  , '' , ''        , n_red)

" For 'nathanaelkane/vim-indent-guides'
call s:my_hi('IndentGuidesOdd'  , '' , ''        , n_black)
call s:my_hi('IndentGuidesEven' , '' , ''        , b_green)


" For 'SirVer/ultisnips'
hi! link snipLeadingSpaces Normal

" For Golang
call s:my_hi('goImport'   , ''     , n_red  , '')

" For Vimscript
call s:my_hi('vimIsCommand'   , ''     , n_cyan , '')

" For ALE
call s:my_hi('ALEWarningSign' , '' , n_yellow   , '')
call s:my_hi('ALEErrorSign'   , '' , n_red      , '')
call s:my_hi('ALEError'       , '' , none_color , '')
call s:my_hi('ALEWarning'     , '' , none_color , '')

" For vim-illuminate
call s:my_hi('illuminatedWord'     , '' , none_color , n_blue)


if has('nvim')
  let g:terminal_color_0  = n_black[1]
  let g:terminal_color_1  = n_red[1]
  let g:terminal_color_2  = n_green[1]
  let g:terminal_color_3  = n_yellow[1]
  let g:terminal_color_4  = n_blue[1]
  let g:terminal_color_5  = n_magenta[1]
  let g:terminal_color_6  = n_cyan[1]
  let g:terminal_color_7  = n_white[1]

  let g:terminal_color_8  = b_black[1]
  let g:terminal_color_9  = b_red[1]
  let g:terminal_color_10 = b_green[1]
  let g:terminal_color_11 = b_yellow[1]
  let g:terminal_color_12 = b_blue[1]
  let g:terminal_color_13 = b_magenta[1]
  let g:terminal_color_14 = b_cyan[1]
  let g:terminal_color_15 = b_white[1]
else
  let g:terminal_ansi_colors = [
        \ n_black[1], n_red[1], n_green[1], n_yellow[1], n_blue[1], n_magenta[1], n_cyan[1], n_white[1],
        \ b_black[1], b_red[1], b_green[1], b_yellow[1], b_blue[1], b_magenta[1], b_cyan[1], b_white[1],
        \ ]
endif
