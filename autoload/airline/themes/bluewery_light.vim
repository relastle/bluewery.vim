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
" File:       bluewery_light.vim
" Maintainer: relastle <relastle@gmail.com>
" Modified:   2019-11-09 01:05
" License:    MIT
"

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:n_black   = [0, '#07242c']
let s:n_red     = [1, '#bb627d']
let s:n_green   = [2, '#4c8d77']
let s:n_yellow  = [3, '#978f65']
let s:n_blue    = [4, '#2b5860']
let s:n_magenta = [5, '#7b8791']
let s:n_cyan    = [6, '#007777']
let s:n_white   = [7, '#cdc7b0']

let s:b_black   = [8, '#234f5c']
let s:b_red     = [9, '#d65b7f']
let s:b_green   = [10, '#b5ab95']
let s:b_yellow  = [11, '#d16545']
let s:b_blue    = [12, '#428182']
let s:b_magenta = [13, '#c7c1aa']
let s:b_cyan    = [14, '#b7c1aa']
let s:b_white   = [15, '#dad4bd']

" The source codes below is highly inspired by
" https://github.com/cocopon/iceberg.vim/blob/master/autoload/airline/themes/iceberg.vim

function! s:build_palette() abort

  let l:col_base     = bluewery#make_gui_term_pair_colors(s:b_black,   s:b_magenta)
  let l:col_edge     = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_yellow)
  let l:col_gradient = bluewery#make_gui_term_pair_colors(s:b_black,   s:b_cyan)
  let l:col_nc       = bluewery#make_gui_term_pair_colors(s:b_white,   s:n_yellow)
  let l:col_normal   = bluewery#make_gui_term_pair_colors(s:n_white,   s:b_blue)
  let l:col_insert   = bluewery#make_gui_term_pair_colors(s:b_black,   s:b_red)
  let l:col_replace  = bluewery#make_gui_term_pair_colors(s:b_black,   s:n_yellow)
  let l:col_visual   = bluewery#make_gui_term_pair_colors(s:b_black,   s:n_green)
  let l:col_error    = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_red)
  let l:col_warning  = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_yellow)

  let p = {}
  let p.inactive = airline#themes#generate_color_map(
        \ l:col_nc,
        \ l:col_nc,
        \ l:col_nc)
  let p.normal = airline#themes#generate_color_map(
        \ l:col_normal,
        \ l:col_gradient,
        \ l:col_base)
  let p.insert = airline#themes#generate_color_map(
        \ l:col_insert,
        \ l:col_gradient,
        \ l:col_base)
  let p.replace = airline#themes#generate_color_map(
        \ l:col_replace,
        \ l:col_gradient,
        \ l:col_base)
  let p.visual = airline#themes#generate_color_map(
        \ l:col_visual,
        \ l:col_gradient,
        \ l:col_base)

  " Error
  let p.inactive.airline_error = l:col_error
  let p.insert.airline_error = l:col_error
  let p.normal.airline_error = l:col_error
  let p.replace.airline_error = l:col_error
  let p.visual.airline_error = l:col_error

  " Warning
  let p.inactive.airline_warning = l:col_warning
  let p.insert.airline_warning = l:col_warning
  let p.normal.airline_warning = l:col_warning
  let p.replace.airline_warning = l:col_warning
  let p.visual.airline_warning = l:col_warning

  return p
endfunction

let g:airline#themes#bluewery_light#palette = s:build_palette()

let &cpo = s:save_cpo
unlet s:save_cpo
