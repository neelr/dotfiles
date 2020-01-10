" Call the .vimrc.plug file
let g:airline_powerline_fonts = 1
set guifont=Hurmit\ Nerd\ Font:h11
set encoding=UTF-8
if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif
 set bs=2
 set number
 inoremap {<CR> {<CR>}<C-o>O
 inoremap ( ()<Left>
inoremap  "  ""<Left>
inoremap  '  ''<Left>
inoremap [<CR> [<CR>]<C-o>O
set mouse=a
