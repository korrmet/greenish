if !has("gui_running") && &t_Co != 256 && &t_Co != 88
	echomsg ""
	echomsg "err: please use GUI or a 256-color terminal or 88-color terminal"
	echomsg ""
	finish
endif

if &background == "light"
	set background=dark
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'greenish'

" Palette is next:
" Green colors  : 022, 028, 034, 040, 046
" Green and blue: 025, 031, 037, 043, 049
" Black color   : 016
" Gray          : 234
" White color   : 231
" Transparent   : none
" Allowed font effects: underline, italic, reverse
hi Comment      ctermfg=034  ctermbg=none ctermul=none cterm=italic           guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi ColorColumn               ctermbg=022                                                    guibg=#005f00                                                
hi Constant     ctermfg=034  ctermbg=none ctermul=none cterm=italic           guifg=#00af00 guibg=#000000 guisp=#000000 gui=italic
hi Cursor       ctermfg=034  ctermbg=none ctermul=none cterm=reverse          guifg=#00af00 guibg=#000000 guisp=#000000 gui=reverse
hi CursorColumn              ctermbg=022                                                    guibg=#005f00                       
hi CursorIM     ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi CursorLine                ctermbg=234               cterm=none                           guibg=#1c1c1c               gui=none
hi DiffAdd      ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi DiffChange   ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi DiffDelete   ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi DiffText     ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#00af00 guibg=#000000 guisp=#000000 gui=none
hi Directory    ctermfg=043  ctermbg=none ctermul=none cterm=none             guifg=#00d7af guibg=#000000 guisp=#000000 gui=none
hi Error        ctermfg=046  ctermbg=none ctermul=none cterm=reverse          guifg=#00ff00 guibg=#000000 guisp=#000000 gui=reverse
hi ErrorMsg     ctermfg=046  ctermbg=none ctermul=none cterm=reverse          guifg=#00ff00 guibg=#000000 guisp=#000000 gui=reverse
hi FoldColumn   ctermfg=031  ctermbg=016  ctermul=none cterm=none             guifg=#0087af guibg=#000000 guisp=#000000 gui=none
hi Folded       ctermfg=031  ctermbg=016  ctermul=none cterm=none             guifg=#0087af guibg=#000000 guisp=#000000 gui=none
hi Identifier   ctermfg=034  ctermbg=none ctermul=none cterm=underline        guifg=#00af00 guibg=#000000 guisp=#000000 gui=underline
hi IncSearch    ctermfg=031  ctermbg=025  ctermul=none cterm=none             guifg=#0087af guibg=#005faf guisp=#000000 gui=none
hi LineNr       ctermfg=022  ctermbg=none ctermul=none cterm=none             guifg=#005f00 guibg=#000000 guisp=#000000 gui=none
hi CursorLineNr ctermfg=028  ctermbg=none ctermul=none cterm=none             guifg=#008700 guibg=#000000 guisp=#000000 gui=none
hi MatchParen   ctermfg=046  ctermbg=none ctermul=none cterm=underline        guifg=#00ff00 guibg=#000000 guisp=#000000 gui=underline
hi ModeMsg      ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi MoreMsg      ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi NonText      ctermfg=043  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Normal       ctermfg=046  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Pmenu        ctermfg=031  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi PmenuSbar    ctermfg=031  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi PmenuSel     ctermfg=049  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi PreProc      ctermfg=031  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Question     ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Search       ctermfg=040  ctermbg=028  ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Special      ctermfg=034  ctermbg=none ctermul=034  cterm=italic,underline guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi SpecialKey   ctermfg=034  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Statement    ctermfg=043  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi StatusLine   ctermfg=037  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi StatusLineNC ctermfg=231  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi TabLine      ctermfg=037  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi TabLineFill  ctermfg=037  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi TabLineSel   ctermfg=037  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Title        ctermfg=031  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Todo         ctermfg=034  ctermbg=none ctermul=034  cterm=underline        guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Type         ctermfg=034  ctermbg=none ctermul=none cterm=italic           guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Underlined   ctermfg=034  ctermbg=none ctermul=034  cterm=underline        guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi VertSplit    ctermfg=049  ctermbg=none ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi Visual       ctermfg=049  ctermbg=022  ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi VisualNOS    ctermfg=049  ctermbg=022  ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi WarningMsg   ctermfg=043  ctermbg=022  ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
hi WildMenu     ctermfg=043  ctermbg=022  ctermul=none cterm=none             guifg=#000000 guibg=#000000 guisp=#000000 gui=none
