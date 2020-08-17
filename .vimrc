set mouse=a
set tabstop=4
set shiftwidth=4
set pastetoggle=<F3>

let g:ycm_global_ycm_extra_conf = '/home/alhasan/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1

autocmd filetype c inoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp imap <F9> <Esc> :w <CR> : !g++ -std=c++17 % && ./a.out <CR>
autocmd filetype cpp noremap <F9> <Esc> :w <CR> : !g++ -std=c++17 % && ./a.out <CR>




noremap <F2> :set invnumber<CR>
inoremap <F2> <C-O>:set invnumber<CR>
noremap F gg=G
''' install vim-gnome to actually work this shortcut
vnoremap <C-c> "+y



call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
