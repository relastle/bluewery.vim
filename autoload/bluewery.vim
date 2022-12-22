" File              : bluewery.vim
" Author            : Hiroki Konishi <relastle@gmail.com>
" Date              : 15.12.2019
" Last Modified Date: 15.12.2019
" Last Modified By  : Hiroki Konishi <relastle@gmail.com>
"
function! bluewery#hi(item, attr, fg_color_name, bg_color_name) abort
  let l:stmt = printf('hi! %s', a:item)
  if (!empty(a:fg_color_name))
    let l:stmt = printf('%s ctermfg=%d guifg=%s', stmt, a:fg_color_name[0], a:fg_color_name[1])
  endif
  if (!empty(a:bg_color_name))
    let l:stmt = printf('%s ctermbg=%d guibg=%s', stmt, a:bg_color_name[0], a:bg_color_name[1])
  endif
  if (!empty(a:attr))
    let l:stmt = printf('%s gui=%s term=%s', stmt, a:attr, a:attr)
  endif
  execute l:stmt
endfunction

function! bluewery#make_gui_term_pair_colors(fg_color, bg_color)
  return [
        \ a:fg_color[1],
        \ a:bg_color[1],
        \ a:fg_color[0],
        \ a:bg_color[0],
        \ ]
endfunction
