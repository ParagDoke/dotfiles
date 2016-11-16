autocmd BufEnter,WinEnter * set number relativenumber cursorline cursorcolumn hlsearch tabstop=2 shiftwidth=2 expandtab background=dark
autocmd VimEnter * if &diff | execute 'windo set wrap' | execute 'windo set syntax=off' | endif
autocmd WinLeave * set norelativenumber nocursorline nocursorcolumn
highlight DiffAdd ctermfg=Black ctermbg=LightGreen
highlight DiffDelete ctermfg=White ctermbg=LightRed
highlight DiffChange ctermfg=Black ctermbg=Cyan
highlight DiffText ctermfg=Black ctermbg=Yellow
highlight CursorColumn ctermbg=DarkBlue
vnoremap < <gv
vnoremap > >gv
