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


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = [s:b_black[1]   , s:b_magenta[1] , s:b_black[0]   , s:b_magenta[0]]
  let col_edge     = [s:b_white[1]   , s:b_yellow[1]  , s:b_white[0]   , s:b_yellow[0]]
  let col_gradient = [s:b_black[1]   , s:b_cyan[1]    , s:b_black[0]   , s:b_cyan[0]]
  let col_nc       = [s:b_white[1]   , s:n_yellow[1]  , s:b_white[0]   , s:n_yellow[0]]
  let col_tabfill  = [s:n_magenta[1] , s:b_green[1]   , s:n_magenta[0] , s:b_green[0]]
  let col_tabsel   = [s:b_white[1]   , s:n_blue[1]    , s:b_white[0]   , s:n_blue[0]]
  let col_normal   = [s:n_white[1]   , s:b_blue[1]    , s:n_white[0]   , s:b_blue[0]]
  let col_insert   = [s:b_black[1]   , s:b_red[1]     , s:b_black[0]   , s:b_red[0]]
  let col_replace  = [s:b_black[1]   , s:n_yellow[1]  , s:b_black[0]   , s:n_yellow[0]]
  let col_visual   = [s:b_black[1]   , s:n_green[1]   , s:b_black[0]   , s:n_green[0]]
  let col_error    = [s:n_white[1]   , s:n_red[1]     , s:n_white[0]   , s:n_red[0]]
  let col_warning  = [s:n_white[1]   , s:n_yellow[1]  , s:n_white[0]   , s:n_yellow[0]]

  let p.normal.middle = [
        \ col_base]
  let p.normal.left = [
        \ col_normal,
        \ col_gradient]
  let p.normal.right = [
        \ col_edge,
        \ col_gradient]
  let p.normal.error = [
        \ col_error]
  let p.normal.warning = [
        \ col_warning]

  let p.insert.left = [
        \ col_insert,
        \ col_gradient]
  let p.replace.left = [
        \ col_replace,
        \ col_gradient]
  let p.visual.left = [
        \ col_visual,
        \ col_gradient]

  let p.inactive.middle = [
        \ col_nc]
  let p.inactive.left = [
        \ col_nc,
        \ col_nc]
  let p.inactive.right = [
        \ col_nc,
        \ col_nc]

  let p.tabline.middle = [
        \ col_tabfill]
  let p.tabline.left = [
        \ col_tabfill]
  let p.tabline.tabsel = [
        \ col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#bluewery_light#palette = s:build_palette()

let &cpoptions = s:save_cpo
unlet s:save_cpo
