" File              : bluewery.vim
" Author            : Hiroki Konishi <relastle@gmail.com>
" Date              : 15.12.2019
" Last Modified Date: 15.12.2019
" Last Modified By  : Hiroki Konishi <relastle@gmail.com>
"
function! bluewery#hi(item, attr, fg_color_name, bg_color_name) abort
  if empty(a:attr) && empty(a:bg_color_name)
    execute printf(
      \ 'hi! %s ctermfg=%d guifg=%s',
      \ a:item,
      \ a:fg_color_name[0],
      \ a:fg_color_name[1],
    \ )
    return
  endif

  if empty(a:attr) && empty(a:fg_color_name)
    execute printf(
      \ 'hi! %s ctermbg=%d guibg=%s',
      \ a:item,
      \ a:bg_color_name[0],
      \ a:bg_color_name[1],
    \ )
    return
  endif

  if empty(a:attr)
    execute printf(
      \ 'hi! %s ctermfg=%d guifg=%s ctermbg=%d guibg=%s',
      \ a:item,
      \ a:fg_color_name[0],
      \ a:fg_color_name[1],
      \ a:bg_color_name[0],
      \ a:bg_color_name[1],
    \ )
    return
  endif

  execute printf(
    \ 'hi! %s ctermfg=%d guifg=%s ctermbg=%d guibg=%s gui=%s',
    \ a:item,
    \ a:fg_color_name[0],
    \ a:fg_color_name[1],
    \ a:bg_color_name[0],
    \ a:bg_color_name[1],
    \ a:attr,
  \ )
endfunction

function! bluewery#make_gui_term_pair_colors(fg_color, bg_color)
  return [
        \ a:fg_color[1],
        \ a:bg_color[1],
        \ a:fg_color[0],
        \ a:bg_color[0],
        \ ]
endfunction
