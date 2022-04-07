# HelpMe!
HelpMe! is a tiny customizable popup menu for Vim 8.2+

Have you ever found yourself staring at a blinking cursor on Vim's command line, trying your hardest to remember what the command you're trying to perform is?

Remember that super cool trick you saw on Reddit a year ago and thought, "Wow, I'm totally going to use that!" and now you can't remember what it is?

Well, I have both of these problems. I made this plugin to help myself, maybe it can help you too.

## Usage + Customization
Simply enter the command `:HelpMe` to open the menu, find what you're looking for, then press `q` to close the menu. That's it.

Of course, there won't be much in the menu until you add stuff to it. Use the following `.vimrc` entry as an guide for customizing your own menu:

```
let g:HelpMeItems = [
    \ "Shortcuts:",
    \ "tt           toggle split terminal buffer",
    \ "daw          delete a word under the cursor",
    \ "caw          change a word under the cursor and insert",
    \ "di\"          delete text inside quotes (for others, change \")",
    \ "ci\"          change text inside quotes (for others, change \")",
    \ "<C-n>        enter multiple cursors mode",
    \ "",
    \ "Commands:",
    \ ":H           insert nicely formatted header comment (custom)",
    \ ]
```

By default, Vim will ignore all other input aside from `q` while HelpMe! is open. If you'd like to disable this, add `let g:HelpMeAllowInput = 1` to your `.vimrc`, this would allow you to operate Vim normally while the window is open. It'll cover up the center of your screen, but maybe this would be useful for someone.

Optionally, you can map a shortcut to call `:HelpMe` with something like this:
```
nnoremap <silent> <C-h> :HelpMe<CR>
```

This would make `ctrl+h` to open the HelpMe! menu.

## Installation
Add `helpme.vim` to your `~/.vim/plugin/` folder, or if you're using Vim-Plug, add `Plug 'leftbones/helpme-vim'` to your `.vimrc` file.

## Preview
![helpme](/helpme_preview.png)
