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
" https://github.com/cocopon/iceberg.vim/blob/master/autoload/lightline/colorscheme/iceberg.vim

function! s:build_palette() abort
  let l:p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {},
        \ }

  let l:col_base     = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_green)
  let l:col_edge     = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_yellow)
  let l:col_gradient = bluewery#make_gui_term_pair_colors(s:b_white,   s:n_blue)
  let l:col_nc       = bluewery#make_gui_term_pair_colors(s:b_white,   s:b_green)
  let l:col_tabfill  = bluewery#make_gui_term_pair_colors(s:n_magenta, s:b_green)
  let l:col_tabsel   = bluewery#make_gui_term_pair_colors(s:b_white,   s:n_blue)
  let l:col_normal   = bluewery#make_gui_term_pair_colors(s:n_black,   s:b_blue)
  let l:col_insert   = bluewery#make_gui_term_pair_colors(s:n_black,   s:b_red)
  let l:col_replace  = bluewery#make_gui_term_pair_colors(s:n_black,   s:n_yellow)
  let l:col_visual   = bluewery#make_gui_term_pair_colors(s:n_black,   s:n_green)
  let l:col_error    = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_red)
  let l:col_warning  = bluewery#make_gui_term_pair_colors(s:n_white,   s:n_yellow)

  let l:p.normal.middle = [
        \ l:col_base]
  let l:p.normal.left = [
        \ l:col_normal,
        \ l:col_gradient]
  let l:p.normal.right = [
        \ l:col_edge,
        \ l:col_gradient]
  let l:p.normal.error = [
        \ l:col_error]
  let l:p.normal.warning = [
        \ l:col_warning]

  let l:p.insert.left = [
        \ l:col_insert,
        \ l:col_gradient]
  let l:p.replace.left = [
        \ l:col_replace,
        \ l:col_gradient]
  let l:p.visual.left = [
        \ l:col_visual,
        \ l:col_gradient]

  let l:p.inactive.middle = [
        \ l:col_nc]
  let l:p.inactive.left = [
        \ l:col_nc,
        \ l:col_nc]
  let l:p.inactive.right = [
        \ l:col_nc,
        \ l:col_nc]

  let l:p.tabline.middle = [
        \ l:col_tabfill]
  let l:p.tabline.left = [
        \ l:col_tabfill]
  let l:p.tabline.tabsel = [
        \ l:col_tabsel]

  let l:p.tabline.right = copy(l:p.normal.right)

  return l:p
endfunction


let g:lightline#colorscheme#bluewery#palette = s:build_palette()

let &cpoptions = s:save_cpo
unlet s:save_cpo
