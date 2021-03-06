""""""""""""""""""""""
" => Colorscheme
""""""""""""""""""""""
" cycle through color themes with
" :NextColorScheme,
" :PrevColorScheme,
" :RandomColorScheme

" setting theme
set background=dark
"colorscheme heroku
colorscheme molokai_dark

""""""""""""""""""""""
" => Airline
""""""""""""""""""""""
"let g:airline_theme="dark"
let g:airline_theme="molokai"

" Use powerline fonts
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t

  " Disable scrollbars (real hackers don't use scrollbars for navigation!)
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L

  " maximize gui
  if has("win16") || has("win32")
    augroup maximize_on_windows
      autocmd!
      au GUIEnter * simalt ~x
    augroup END
  else
  " set lines=999 columns=999
  endif
endif


" Set font according to system
" Paste font into buffer: :put =&guifont or <C-R>=&guifont
if has("win16") || has("win32")
  set gfn=Source_Code_Pro:h10:cANSI:qDRAFT
elseif has("gui_gtk2") || has("gui_gtk3")
"  set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  set gfn=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10
elseif has("macunix")
  set gfn=MesloLGSDZForPowerline-Regular:h11
elseif has("linux")
elseif has("unix")
endif


