set modeline background=dark hlsearch expandtab path=.,**

" If vim is running in diffmode, switch off all syntax and wrap text
autocmd VimEnter * if &diff | execute 'windo set wrap' | execute 'windo set syntax=off' | endif

" Set up navigation aids when focus shifts to a window
autocmd WinEnter,BufEnter * set number relativenumber cursorline cursorcolumn
" Switch off some navigation aids when focus goes off a window
autocmd WinLeave * set norelativenumber nocursorline nocursorcolumn

" Set up colors for diff
highlight DiffAdd ctermfg=Black ctermbg=LightGreen
highlight DiffDelete ctermfg=White ctermbg=LightRed
highlight DiffChange ctermfg=Black ctermbg=Cyan
highlight DiffText ctermfg=Black ctermbg=Yellow

" Use a dark blue vertical line for crosshair
highlight CursorColumn ctermbg=DarkBlue

" Avoid losing visual selection after left, right shift
vnoremap < <gv
vnoremap > >gv
