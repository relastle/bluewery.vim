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

let s:save_cpo = &cpoptions
set cpoptions&vim

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

" The source codes below is highly inspired by
" https://github.com/cocopon/iceberg.vim/blob/master/autoload/airline/themes/iceberg.vim

function! s:build_palette() abort

  let l:col_base     = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_green)
  let l:col_edge     = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_yellow)
  let l:col_gradient = bluewery#make_gui_term_pair_colors(s:b_white,   s:n_blue)
  let l:col_nc       = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_black)
  let l:col_normal   = bluewery#make_gui_term_pair_colors(s:n_black,   s:b_blue)
  let l:col_insert   = bluewery#make_gui_term_pair_colors(s:n_black,   s:b_red)
  let l:col_replace  = bluewery#make_gui_term_pair_colors(s:n_black,   s:n_yellow)
  let l:col_visual   = bluewery#make_gui_term_pair_colors(s:n_black,   s:n_green)
  let l:col_error    = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_red)
  let l:col_warning  = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_yellow)

  let l:p = {}
  let l:p.inactive = airline#themes#generate_color_map(
        \ l:col_nc,
        \ l:col_nc,
        \ l:col_nc)
  let l:p.normal = airline#themes#generate_color_map(
        \ l:col_normal,
        \ l:col_gradient,
        \ l:col_base)
  let l:p.insert = airline#themes#generate_color_map(
        \ l:col_insert,
        \ l:col_gradient,
        \ l:col_base)
  let l:p.replace = airline#themes#generate_color_map(
        \ l:col_replace,
        \ l:col_gradient,
        \ l:col_base)
  let l:p.visual = airline#themes#generate_color_map(
        \ l:col_visual,
        \ l:col_gradient,
        \ l:col_base)

  " Error
  let l:p.inactive.airline_error = l:col_error
  let l:p.insert.airline_error = l:col_error
  let l:p.normal.airline_error = l:col_error
  let l:p.replace.airline_error = l:col_error
  let l:p.visual.airline_error = l:col_error

  " Warning
  let l:p.inactive.airline_warning = l:col_warning
  let l:p.insert.airline_warning = l:col_warning
  let l:p.normal.airline_warning = l:col_warning
  let l:p.replace.airline_warning = l:col_warning
  let l:p.visual.airline_warning = l:col_warning

  return l:p
endfunction

let g:airline#themes#bluewery#palette = s:build_palette()

let &cpo = s:save_cpo
unlet s:save_cpo
