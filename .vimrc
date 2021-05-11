set modeline background=dark hlsearch ignorecase tabstop=4 expandtab shiftwidth=4 path=.,**

" Set up navigation aids when focus shifts to a window
autocmd WinEnter,BufEnter * set number relativenumber cursorline cursorcolumn
" Switch off some navigation aids when focus goes off a window
autocmd WinLeave * set norelativenumber nocursorline nocursorcolumn

autocmd FileType python set colorcolumn=80
autocmd FileType make set noexpandtab
autocmd FileType yaml set tabstop=2 shiftwidth=2

" If vim is running in diffmode, switch off all syntax and wrap text
autocmd VimEnter * if &diff | execute 'windo set wrap' | execute 'windo set syntax=off' | endif

" Set up colors for diff
highlight DiffAdd ctermfg=Black ctermbg=LightGreen
highlight DiffDelete ctermfg=White ctermbg=LightRed
highlight DiffChange ctermfg=Black ctermbg=Cyan
highlight DiffText ctermfg=Black ctermbg=Yellow

" Use a dark blue vertical line for crosshair
highlight CursorColumn ctermbg=DarkBlue ctermfg=White

" Avoid losing visual selection after left, right shift
vnoremap < <gv
vnoremap > >gv
