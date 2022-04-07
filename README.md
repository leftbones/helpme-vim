# HelpMe!
Have you ever found yourself staring at a blinking cursor on Vim's command line, trying your hardest to remember what the command you're trying to perform is?

Remember that super cool trick you saw on Reddit a year ago and thought, "Wow, I'm totally going to use that!" and now you can't remember what it is?

Well, I have both of these problems. I made this plugin to help myself, maybe it can help you too.

![helpme](/helpme_preview.png)

HelpMe! is a tiny customizable pop-up menu for Vim (requires 8.2 or higher). Simply enter the command `:HelpMe` to open the menu, find what you're looking for, then press `q` to close the menu. That's it.

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
