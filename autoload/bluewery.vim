" File              : bluewery.vim
" Author            : Hiroki Konishi <relastle@gmail.com>
" Date              : 15.12.2019
" Last Modified Date: 15.12.2019
" Last Modified By  : Hiroki Konishi <relastle@gmail.com>

function! bluewery#make_gui_term_pair_colors(fg_color, bg_color)
  return [
        \ a:fg_color[1],
        \ a:bg_color[1],
        \ a:fg_color[0],
        \ a:bg_color[0],
        \ ]
endfunction
