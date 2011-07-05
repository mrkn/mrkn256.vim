" Vim color file
" Maintainer: Kenta Murata <mrkn@mrkn.jp>

" This is the colorscheme designed by mrkn based on "desert256" colorscheme
" created by Henry So, Jr.  This colorscheme is designed to work with with
" 88- and 256-color xterms.
"
" The ancestor version "desert256" colorscheme is available at
" http://www.vim.org/scripts/script.php?script_id=1243
"
" The real feature of this color scheme, with a wink to the "inkpot"
" colorscheme, is the programmatic approximation of the gui colors to the
" palettes of 88- and 256- color xterms.  The functions that do this (folded
" away, for readability) are calibrated to the colors used for
" Thomas E. Dickey's xterm (version 200), which is available at
" http://dickey.his.com/xterm/xterm.html.
"
" Henry had struggled with trying to parse the rgb.txt file to avoid the
" necessity of converting color names to #rrggbb form, but decided it was just
" not worth the effort.  I thank a lot for his results.

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="mrkn256"

" dark colormap {{{
function! <SID>init_dark_colormap()
  let l:cm = {}
  " common group               fg        bg        attr
  let l:cm['Normal'] =       [ 'cccccc', '000000', '' ]
  let l:cm['ColorColumn'] =  [ '------', '------', '' ]
  let l:cm['Conceal'] =      [ '------', '------', '' ]
  let l:cm['Cursor'] =       [ '708090', 'f0e68c', '' ]
  let l:cm['CursorIM'] =     [ '------', '------', '' ]
  let l:cm['CursorColumn'] = [ '------', '333333', 'none' ]
  let l:cm['CursorLine'] =   [ '------', '333333', 'underline' ]
  let l:cm['Directory'] =    [ '------', '------', '' ]
  let l:cm['DiffAdd'] =      [ '------', '------', '' ]
  let l:cm['DiffChange'] =   [ '------', '------', '' ]
  let l:cm['DiffDelete'] =   [ '------', '------', '' ]
  let l:cm['DiffText'] =     [ '------', '------', '' ]
  let l:cm['ErrMsg'] =       [ '------', '------', '' ]
  let l:cm['VertSplit'] =    [ '666666', '000000', 'none' ]
  let l:cm['Folded'] =       [ 'ffd700', '000000', 'none' ]
  let l:cm['FoldColumn'] =   [ 'd2b48c', '4d4d4d', '' ]
  let l:cm['SignColumn'] =   [ '------', '------', '' ]
  let l:cm['IncSearch'] =    [ '708090', 'f0e68c', '' ]
  let l:cm['LineNr'] =       [ '666666', '------', 'none' ]
  let l:cm['MatchParen'] =   [ '------', '------', '' ]
  let l:cm['ModeMsg'] =      [ 'daa520', '------', '' ]
  let l:cm['MoreMsg'] =      [ '2e8b57', '------', '' ]
  let l:cm['NonText'] =      [ '666699', '------', 'none' ]
  let l:cm['Pmenu'] =        [ 'cccccc', '333333', 'none' ]
  let l:cm['PmenuSel'] =     [ '663333', 'cccccc', 'bold' ]
  let l:cm['PmenuSbar'] =    [ '------', '------', '' ]
  let l:cm['PmenuThumb'] =   [ '------', '------', '' ]
  let l:cm['Question'] =     [ '00ff7f', '------', '' ]
  let l:cm['Search'] =       [ '333333', 'cccccc', 'bold' ]
  let l:cm['SpecialKey'] =   [ '666699', '------', 'none' ]
  let l:cm['SpellBad'] =     [ '------', '------', '' ]
  let l:cm['SpellCap'] =     [ '------', '------', '' ]
  let l:cm['SpellLocal'] =   [ '------', '------', '' ]
  let l:cm['SpellRare'] =    [ '------', '------', '' ]
  let l:cm['StatusLine'] =   [ 'ffffff', '666666', 'none' ]
  let l:cm['StatusLineNC'] = [ '000000', '666666', 'none' ]
  let l:cm['TabLine'] =      [ '------', '------', '' ]
  let l:cm['TabLineFill'] =  [ '------', '------', '' ]
  let l:cm['TabLineSel'] =   [ '------', '------', '' ]
  let l:cm['Title'] =        [ 'cd5c5c', '------', '' ]
  let l:cm['Visual'] =       [ '6b8e23', 'f0e68c', 'reverse' ]
  let l:cm['VisualNOS'] =    [ '------', '------', '' ]
  let l:cm['WarningMsg'] =   [ 'fa8072', '------', '' ]
  let l:cm['WildMenu'] =     [ '------', '------', '' ]

  " GUI                     fg        bg        attr
  let l:cm['Menu'] =      [ '------', '------', '' ]
  let l:cm['Scrollbar'] = [ '------', '------', '' ]
  let l:cm['Tooltip'] =   [ '------', '------', '' ]

  " common syntax                fg        bg        attr
  let l:cm['Comment'] =        [ '00ff00', '------', '' ]
  let l:cm['Constant'] =       [ 'ffcc66', '------', '' ]
  let l:cm['String'] =         [ '99cccc', '------', '' ]
  let l:cm['Character'] =      [ '------', '------', '' ]
  let l:cm['Number'] =         [ 'cc66ff', '------', '' ]
  let l:cm['Boolean'] =        [ '------', '------', '' ]
  let l:cm['Float'] =          [ '------', '------', '' ]
  let l:cm['Identifier'] =     [ '99ff00', '------', 'none' ]
  let l:cm['Function'] =       [ '9999ff', '------', 'underline' ]
  let l:cm['Statement'] =      [ '6699ff', '------', 'none' ]
  let l:cm['Conditional'] =    [ 'ff6633', '------', 'bold' ]
  let l:cm['Repeat'] =         [ '66ff66', '------', 'bold' ]
  let l:cm['Label'] =          [ '------', '------', '' ]
  let l:cm['Operator'] =       [ 'ff00ff', '------', '' ]
  let l:cm['Keyword'] =        [ '------', '------', '' ]
  let l:cm['Exception'] =      [ '------', '------', '' ]
  let l:cm['PreProc'] =        [ 'ff6666', '------', '' ]
  let l:cm['Include'] =        [ '------', '------', '' ]
  let l:cm['Define'] =         [ '------', '------', '' ]
  let l:cm['Macro'] =          [ '------', '------', '' ]
  let l:cm['PreCondit'] =      [ '------', '------', '' ]
  let l:cm['Type'] =           [ 'ffcc66', '------', 'bold' ]
  let l:cm['StorageClass'] =   [ '------', '------', '' ]
  let l:cm['Structure'] =      [ '------', '------', '' ]
  let l:cm['Typedef'] =        [ '------', '------', '' ]
  let l:cm['Special'] =        [ 'ffdead', '------', '' ]
  let l:cm['SpecialChar'] =    [ '------', '------', '' ]
  let l:cm['Tag'] =            [ '------', '------', '' ]
  let l:cm['Delimiter'] =      [ '99cccc', '------', 'bold' ]
  let l:cm['SpecialComment'] = [ '------', '------', '' ]
  let l:cm['Debug'] =          [ '------', '------', '' ]
  let l:cm['Underline'] =      [ '------', '------', '' ]
  let l:cm['Ignore'] =         [ '666666', '------', '' ]
  let l:cm['Error'] =          [ 'fa8072', '000000', '' ]
  let l:cm['Todo'] =           [ 'ff4500', 'eeee00', '' ]

  " ruby   group                         fg        bg        attr
  let l:cm['rubyDefine'] =             [ 'ffff00', '------', 'bold' ]
  let l:cm['rubyClass'] =              [ '3399ff', '------', 'bold' ]
  let l:cm['rubyModule'] =             [ 'ff9966', '------', 'bold' ]
  let l:cm['rubyControl'] =            [ 'ff99ff', '------', '' ]
  let l:cm['rubyGlobalVariable'] =     [ 'ff3300', '------', '' ]
  let l:cm['rubyClassVariable'] =      [ 'ff3300', '------', '' ]
  let l:cm['rubyPredefinedVariable'] = [ 'ff9999', '------', '' ]
  let l:cm['rubyPredefinedConstant'] = [ 'ff9999', '------', '' ]
  let l:cm['rubySymbol'] =             [ '99ffcc', '------', '' ]
  let l:cm['rubyKeywoard'] =           [ 'ff6666', '------', 'bold' ]

  let g:mrkn256_dark_colormap = l:cm
endfunction
call <SID>init_dark_colormap()
delfunction <SID>init_dark_colormap
" }}}

" light colormap {{{
function! <SID>init_light_colormap()
  let l:cm = {}
  " common group               fg        bg        attr
  let l:cm['Normal'] =       [ 'cccccc', '000000', '' ]
  let l:cm['ColorColumn'] =  [ '------', '------', '' ]
  let l:cm['Conceal'] =      [ '------', '------', '' ]
  let l:cm['Cursor'] =       [ '708090', 'f0e68c', '' ]
  let l:cm['CursorIM'] =     [ '------', '------', '' ]
  let l:cm['CursorColumn'] = [ '------', '333333', 'none' ]
  let l:cm['CursorLine'] =   [ '------', '333333', 'underline' ]
  let l:cm['Directory'] =    [ '------', '------', '' ]
  let l:cm['DiffAdd'] =      [ '------', '------', '' ]
  let l:cm['DiffChange'] =   [ '------', '------', '' ]
  let l:cm['DiffDelete'] =   [ '------', '------', '' ]
  let l:cm['DiffText'] =     [ '------', '------', '' ]
  let l:cm['ErrMsg'] =       [ '------', '------', '' ]
  let l:cm['VertSplit'] =    [ '666666', '000000', 'none' ]
  let l:cm['Folded'] =       [ 'ffd700', '000000', 'none' ]
  let l:cm['FoldColumn'] =   [ 'd2b48c', '4d4d4d', '' ]
  let l:cm['SignColumn'] =   [ '------', '------', '' ]
  let l:cm['IncSearch'] =    [ '708090', 'f0e68c', '' ]
  let l:cm['LineNr'] =       [ '666666', '------', 'none' ]
  let l:cm['MatchParen'] =   [ '------', '------', '' ]
  let l:cm['ModeMsg'] =      [ 'daa520', '------', '' ]
  let l:cm['MoreMsg'] =      [ '2e8b57', '------', '' ]
  let l:cm['NonText'] =      [ '666699', '------', 'none' ]
  let l:cm['Pmenu'] =        [ 'cccccc', '333333', 'none' ]
  let l:cm['PmenuSel'] =     [ '663333', 'cccccc', 'bold' ]
  let l:cm['PmenuSbar'] =    [ '------', '------', '' ]
  let l:cm['PmenuThumb'] =   [ '------', '------', '' ]
  let l:cm['Question'] =     [ '00ff7f', '------', '' ]
  let l:cm['Search'] =       [ '333333', 'cccccc', 'bold' ]
  let l:cm['SpecialKey'] =   [ '666699', '------', 'none' ]
  let l:cm['SpellBad'] =     [ '------', '------', '' ]
  let l:cm['SpellCap'] =     [ '------', '------', '' ]
  let l:cm['SpellLocal'] =   [ '------', '------', '' ]
  let l:cm['SpellRare'] =    [ '------', '------', '' ]
  let l:cm['StatusLine'] =   [ 'ffffff', '666666', 'none' ]
  let l:cm['StatusLineNC'] = [ '000000', '666666', 'none' ]
  let l:cm['TabLine'] =      [ '------', '------', '' ]
  let l:cm['TabLineFill'] =  [ '------', '------', '' ]
  let l:cm['TabLineSel'] =   [ '------', '------', '' ]
  let l:cm['Title'] =        [ 'cd5c5c', '------', '' ]
  let l:cm['Visual'] =       [ '6b8e23', 'f0e68c', 'reverse' ]
  let l:cm['VisualNOS'] =    [ '------', '------', '' ]
  let l:cm['WarningMsg'] =   [ 'fa8072', '------', '' ]
  let l:cm['WildMenu'] =     [ '------', '------', '' ]

  " GUI                     fg        bg        attr
  let l:cm['Menu'] =      [ '------', '------', '' ]
  let l:cm['Scrollbar'] = [ '------', '------', '' ]
  let l:cm['Tooltip'] =   [ '------', '------', '' ]

  " common syntax                fg        bg        attr
  let l:cm['Comment'] =        [ '00ff00', '------', '' ]
  let l:cm['Constant'] =       [ 'ffcc66', '------', '' ]
  let l:cm['String'] =         [ '99cccc', '------', '' ]
  let l:cm['Character'] =      [ '------', '------', '' ]
  let l:cm['Number'] =         [ 'cc66ff', '------', '' ]
  let l:cm['Boolean'] =        [ '------', '------', '' ]
  let l:cm['Float'] =          [ '------', '------', '' ]
  let l:cm['Identifier'] =     [ '99ff00', '------', 'none' ]
  let l:cm['Function'] =       [ '9999ff', '------', 'underline' ]
  let l:cm['Statement'] =      [ '6699ff', '------', 'none' ]
  let l:cm['Conditional'] =    [ 'ff6633', '------', 'bold' ]
  let l:cm['Repeat'] =         [ '66ff66', '------', 'bold' ]
  let l:cm['Label'] =          [ '------', '------', '' ]
  let l:cm['Operator'] =       [ 'ff00ff', '------', '' ]
  let l:cm['Keyword'] =        [ '------', '------', '' ]
  let l:cm['Exception'] =      [ '------', '------', '' ]
  let l:cm['PreProc'] =        [ 'ff6666', '------', '' ]
  let l:cm['Include'] =        [ '------', '------', '' ]
  let l:cm['Define'] =         [ '------', '------', '' ]
  let l:cm['Macro'] =          [ '------', '------', '' ]
  let l:cm['PreCondit'] =      [ '------', '------', '' ]
  let l:cm['Type'] =           [ 'ffcc66', '------', 'bold' ]
  let l:cm['StorageClass'] =   [ '------', '------', '' ]
  let l:cm['Structure'] =      [ '------', '------', '' ]
  let l:cm['Typedef'] =        [ '------', '------', '' ]
  let l:cm['Special'] =        [ 'ffdead', '------', '' ]
  let l:cm['SpecialChar'] =    [ '------', '------', '' ]
  let l:cm['Tag'] =            [ '------', '------', '' ]
  let l:cm['Delimiter'] =      [ '99cccc', '------', 'bold' ]
  let l:cm['SpecialComment'] = [ '------', '------', '' ]
  let l:cm['Debug'] =          [ '------', '------', '' ]
  let l:cm['Underline'] =      [ '------', '------', '' ]
  let l:cm['Ignore'] =         [ '666666', '------', '' ]
  let l:cm['Error'] =          [ 'fa8072', '000000', '' ]
  let l:cm['Todo'] =           [ 'ff4500', 'eeee00', '' ]

  " ruby   group                         fg        bg        attr
  let l:cm['rubyDefine'] =             [ 'ffff00', '------', 'bold' ]
  let l:cm['rubyClass'] =              [ '3399ff', '------', 'bold' ]
  let l:cm['rubyModule'] =             [ 'ff9966', '------', 'bold' ]
  let l:cm['rubyControl'] =            [ 'ff99ff', '------', '' ]
  let l:cm['rubyGlobalVariable'] =     [ 'ff3300', '------', '' ]
  let l:cm['rubyClassVariable'] =      [ 'ff3300', '------', '' ]
  let l:cm['rubyPredefinedVariable'] = [ 'ff9999', '------', '' ]
  let l:cm['rubyPredefinedConstant'] = [ 'ff9999', '------', '' ]
  let l:cm['rubySymbol'] =             [ '99ffcc', '------', '' ]
  let l:cm['rubyKeywoard'] =           [ 'ff6666', '------', 'bold' ]

  let g:mrkn256_light_colormap = l:cm
endfunction
call <SID>init_light_colormap()
delfunction <SID>init_light_colormap
" }}}

if has("gui_running") || &t_Co == 88 || &t_Co == 256
    " functions {{{
    " returns an approximate grey index for the given grey level
    function! <SID>grey_number(x)
        if &t_Co == 88
            if a:x < 23
                return 0
            elseif a:x < 69
                return 1
            elseif a:x < 103
                return 2
            elseif a:x < 127
                return 3
            elseif a:x < 150
                return 4
            elseif a:x < 173
                return 5
            elseif a:x < 196
                return 6
            elseif a:x < 219
                return 7
            elseif a:x < 243
                return 8
            else
                return 9
            endif
        else
            if a:x < 14
                return 0
            else
                let l:n = (a:x - 8) / 10
                let l:m = (a:x - 8) % 10
                if l:m < 5
                    return l:n
                else
                    return l:n + 1
                endif
            endif
        endif
    endfun

    " returns the actual grey level represented by the grey index
    function! <SID>grey_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 46
            elseif a:n == 2
                return 92
            elseif a:n == 3
                return 115
            elseif a:n == 4
                return 139
            elseif a:n == 5
                return 162
            elseif a:n == 6
                return 185
            elseif a:n == 7
                return 208
            elseif a:n == 8
                return 231
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 8 + (a:n * 10)
            endif
        endif
    endfun

    " returns the palette index for the given grey index
    function! <SID>grey_color(n)
        if &t_Co == 88
            if a:n == 0
                return 16
            elseif a:n == 9
                return 79
            else
                return 79 + a:n
            endif
        else
            if a:n == 0
                return 16
            elseif a:n == 25
                return 231
            else
                return 231 + a:n
            endif
        endif
    endfun

    " returns an approximate color index for the given color level
    function! <SID>rgb_number(x)
        if &t_Co == 88
            if a:x < 69
                return 0
            elseif a:x < 172
                return 1
            elseif a:x < 230
                return 2
            else
                return 3
            endif
        else
            if a:x < 75
                return 0
            else
                let l:n = (a:x - 55) / 40
                let l:m = (a:x - 55) % 40
                if l:m < 20
                    return l:n
                else
                    return l:n + 1
                endif
            endif
        endif
    endfun

    " returns the actual color level for the given color index
    function! <SID>rgb_level(n)
        if &t_Co == 88
            if a:n == 0
                return 0
            elseif a:n == 1
                return 139
            elseif a:n == 2
                return 205
            else
                return 255
            endif
        else
            if a:n == 0
                return 0
            else
                return 55 + (a:n * 40)
            endif
        endif
    endfun

    " returns the palette index for the given R/G/B color indices
    function! <SID>rgb_color(x, y, z)
        if &t_Co == 88
            return 16 + (a:x * 16) + (a:y * 4) + a:z
        else
            return 16 + (a:x * 36) + (a:y * 6) + a:z
        endif
    endfun

    " returns the palette index to approximate the given R/G/B color levels
    function! <SID>color(r, g, b)
        " get the closest grey
        let l:gx = <SID>grey_number(a:r)
        let l:gy = <SID>grey_number(a:g)
        let l:gz = <SID>grey_number(a:b)

        " get the closest color
        let l:x = <SID>rgb_number(a:r)
        let l:y = <SID>rgb_number(a:g)
        let l:z = <SID>rgb_number(a:b)

        if l:gx == l:gy && l:gy == l:gz
            " there are two possibilities
            let l:dgr = <SID>grey_level(l:gx) - a:r
            let l:dgg = <SID>grey_level(l:gy) - a:g
            let l:dgb = <SID>grey_level(l:gz) - a:b
            let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
            let l:dr = <SID>rgb_level(l:gx) - a:r
            let l:dg = <SID>rgb_level(l:gy) - a:g
            let l:db = <SID>rgb_level(l:gz) - a:b
            let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
            if l:dgrey < l:drgb
                " use the grey
                return <SID>grey_color(l:gx)
            else
                " use the color
                return <SID>rgb_color(l:x, l:y, l:z)
            endif
        else
            " only one possibility
            return <SID>rgb_color(l:x, l:y, l:z)
        endif
    endfun

    " returns the palette index to approximate the 'rrggbb' hex string
    function! <SID>rgb(rgb)
        let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
        let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
        let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

        return <SID>color(l:r, l:g, l:b)
    endfun

    " sets the highlighting for the given group
    function! <SID>X(group, fg, bg, attr)
        if a:fg =~? '^[0-9a-f]\+$'
            exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
        endif
        if a:bg =~? '^[0-9a-f]\+$'
            exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
        endif
        if a:attr != ''
            exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
        endif
    endfun

    function! <SID>apply_colormap_group(cmap, group)
      let l:fg = a:cmap[a:group][0]
      let l:bg = a:cmap[a:group][1]
      let l:attr = a:cmap[a:group][2]
      call <SID>X(a:group, l:fg, l:bg, l:attr)
    endfunction

    function! <SID>apply_colormap(cmap)
      call <SID>apply_colormap_group(a:cmap, 'Normal')
      for l:group in keys(a:cmap)
        if l:group !=# 'Normal'
          call <SID>apply_colormap_group(a:cmap, l:group)
        endif
      endfor
    endfunction
    " }}}

    if &background == "dark"
      call <SID>apply_colormap(g:mrkn256_dark_colormap)
    else
      call <SID>apply_colormap(g:mrkn256_light_colormap)
    endif

    " delete functions {{{
    delf <SID>apply_colormap
    delf <SID>apply_colormap_group
    delf <SID>X
    delf <SID>rgb
    delf <SID>color
    delf <SID>rgb_color
    delf <SID>rgb_level
    delf <SID>rgb_number
    delf <SID>grey_color
    delf <SID>grey_level
    delf <SID>grey_number
    " }}}
else
    " color terminal definitions
    hi SpecialKey    ctermfg=darkgreen
    hi NonText       cterm=bold ctermfg=darkblue
    hi Directory     ctermfg=darkcyan
    hi ErrorMsg      cterm=bold ctermfg=7 ctermbg=1
    hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
    hi Search        cterm=NONE ctermfg=grey ctermbg=blue
    hi MoreMsg       ctermfg=darkgreen
    hi ModeMsg       cterm=NONE ctermfg=brown
    hi LineNr        ctermfg=3
    hi Question      ctermfg=green
    hi StatusLine    cterm=bold,reverse
    hi StatusLineNC  cterm=reverse
    hi VertSplit     cterm=reverse
    hi Title         ctermfg=5
    hi Visual        cterm=reverse
    hi VisualNOS     cterm=bold,underline
    hi WarningMsg    ctermfg=1
    hi WildMenu      ctermfg=0 ctermbg=3
    hi Folded        ctermfg=darkgrey ctermbg=NONE
    hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
    hi DiffAdd       ctermbg=4
    hi DiffChange    ctermbg=5
    hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
    hi DiffText      cterm=bold ctermbg=1
    hi Comment       ctermfg=darkcyan
    hi Constant      ctermfg=brown
    hi Special       ctermfg=5
    hi Identifier    ctermfg=6
    hi Statement     ctermfg=3
    hi PreProc       ctermfg=5
    hi Type          ctermfg=2
    hi Underlined    cterm=underline ctermfg=5
    hi Ignore        ctermfg=darkgrey
    hi Error         cterm=bold ctermfg=7 ctermbg=1
endif

" vim: foldlevel=0 foldmethod=marker
