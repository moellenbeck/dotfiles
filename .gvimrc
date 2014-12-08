" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

" set guifont=Monaco:h11            " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
" set background=light              " Background.
" set lines=45 columns=340          " Window dimensions.

" Uncomment to use.
" set guioptions-=r                 " Don't show right scrollbar

"
" http://en.hjp.im/post/3441560001/use-command-t-in-macvim
"
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif