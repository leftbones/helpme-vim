" helpme.vim
" github.com/leftbones/helpme-vim

if exists('g:plugin_helpme')
    finish
endif

let g:plugin_helpme = 1


" plugin settings
let g:HelpMeMinWidth = 40                           " minimum width of the popup menu in cols

if !exists('g:HelpMeAllowInput')
    let g:HelpMeAllowInput = 0                      " blocks all input except q while menu is open
endif

if !exists('g:HelpMeWindowTitle')
    let g:HelpMeWindowTitle = "HelpMe!"             " the default title of the popup menu
endif

" if no menu items exist, add some help text, otherwise set height to the number of items in the list
if !exists('g:HelpMeItems')
    let g:HelpMeHeight = 4
    let g:HelpMeItems = [
    \ "Add items here by assigning a list to `let g:HelpMeItems` in your .vimrc file",
    \ "See README.md at https://github.com/leftbones/helpme-vim for detailed instructions"
    \ ""
    \ "press 'q' to close"
    \ ]
else
    let g:HelpMeHeight = len(g:HelpMeItems)
    let g:HelpMeItems += ["", "press 'q' to close"]
endif

" make sure the popup window is wide enough to fit the longest menu entry
let min_w = g:HelpMeMinWidth

for i in g:HelpMeItems
    if len(g:HelpMeItems[i]) > min_w
        let min_w = len(g:HelpMeItems[i])
    endif
endfor

let g:HelpMeWidth  = min_w

" default mappings
command! HelpMe :call <sid>HelpMePopup()


" the function itself
function! s:HelpMePopup() abort
    let g:HelpMeWinId = popup_dialog(g:HelpMeItems, #{
        \ title: g:HelpMeWindowTitle,
        \ minwidth: g:HelpMeWidth,
        \ minheight: g:HelpMeHeight,
        \ border:[],
        \ filter: "HelpMeFilter",
        \ })
    return
endfunction

" close the menu with q, all other keys are consumed to avoid accidental keypresses while the menu is open
function! HelpMeFilter(id, key)
    if a:key == 'q'
        call popup_close(a:id)
        return 1
    elseif g:HelpMeAllowInput == 0
        return 1
    end
endfunction
