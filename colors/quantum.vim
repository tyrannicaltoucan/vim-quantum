" Quantum - A Vim color scheme inspired by Material Design
" Author: Brandon Siders
" License: MIT
" Version: 1.0-pre

highlight clear
syntax reset

set background=dark
let g:colors_name = 'quantum'

if !exists('g:quantum_italics')
    let g:quantum_italics = 0
endif

if !exists('g:quantum_black')
    let g:quantum_black = 0
endif

if g:quantum_black
    let s:gray1 = ['#212121', 234]
    let s:gray2 = ['#272b2c', 236]
    let s:gray3 = ['#394040', 238]
    let s:gray4 = ['#5e696a', 242]
    let s:gray5 = ['#aeb6b7', 248]
else
    let s:gray1 = ['#263238', 236]
    let s:gray2 = ['#2c3e44', 238]
    let s:gray3 = ['#415a63', 240]
    let s:gray4 = ['#608592', 244]
    let s:gray5 = ['#aabbc3', 250]
endif

let s:red       = ['#dd6880', 204]
let s:green     = ['#83b879', 114]
let s:yellow    = ['#ddb76f', 221]
let s:blue      = ['#7aa5e6', 75]
let s:purple    = ['#ad88e2', 141]
let s:cyan      = ['#63c9d6', 44]
let s:orange    = ['#da8c68', 209]
let s:navy      = ['#6272cb', 61]

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if g:quantum_italics == 0 && l:attr ==? 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
    endif

    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
    endif

    if l:attr != ''
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
call s:HL('ColorColumn',                    '',         s:gray3,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('CursorLineNr',                   s:cyan,     s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:gray2,    'none')
call s:HL('DiffChange',                     s:yellow,   s:gray2,    'none')
call s:HL('DiffDelete',                     s:red,      s:gray2,    'none')
call s:HL('DiffText',                       s:blue,     s:gray2,    'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('FoldColumn',                     s:gray4,    s:gray1,    '')
call s:HL('Folded',                         s:gray3,    s:gray1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray3,    '',         '')
call s:HL('MatchParen',                     s:gray2,    s:cyan,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray4,    '',         'none')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          s:gray5,    s:gray3,    '')
call s:HL('PmenuSbar',                      '',         s:gray2,    '')
call s:HL('PmenuSel',                       s:gray2,    s:cyan,     '')
call s:HL('PmenuThumb',                     '',         s:gray4,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('Search',                         s:gray1,    s:yellow,   '')
call s:HL('SignColumn',                     s:gray5,    s:gray1,    '')
call s:HL('SpecialKey',                     s:gray4,    '',         '')
call s:HL('SpellCap',                       s:blue,     s:gray2,    'undercurl')
call s:HL('SpellBad',                       s:red,      s:gray2,    'undercurl')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray4,    s:gray2,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:gray3,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('VertSplit',                      s:gray4,    s:gray1,    'none')
call s:HL('Visual',                         s:gray5,    s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:cyan,	    '')

" Standard Syntax
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Character',                      s:green,    '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Statement',                      s:purple,   '',         'none')
call s:HL('Operator',                       s:cyan,     '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Macro',                          s:purple,   '',         '')
call s:HL('Type',                           s:yellow,   '',         'none')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Special',                        s:navy,     '',         '')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:gray1,    'bold')
call s:HL('Todo',                           s:orange,   s:gray1,    'bold')

" CSS
call s:HL('cssAttrComma',                   s:purple,   '',         '')
call s:HL('cssAttributeSelector',           s:green,    '',         '')
call s:HL('cssBraces',                      s:gray5,    '',         '')
call s:HL('cssClassName',                   s:yellow,   '',         '')
call s:HL('cssClassNameDot',                s:yellow,   '',         '')
call s:HL('cssFontDescriptor',              s:purple,   '',         '')
call s:HL('cssFunctionName',                s:blue,     '',         '')
call s:HL('cssIdentifier',                  s:blue,     '',         '')
call s:HL('cssMediaType',                   s:orange,   '',         '')
call s:HL('cssProp',                        s:gray5,    '',         '')
call s:HL('cssSelectorOp',                  s:navy,     '',         '')
call s:HL('cssSelectorOp2',                 s:navy,     '',         '')

" Git Commit
call s:HL('gitcommitBranch',                s:blue,     '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitUntrackedFile',         s:cyan,     '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlEndTag',                     s:blue,     '',         '')
call s:HL('htmlLink',                       s:red,      '',         '')
call s:HL('htmlTag',                        s:blue,     '',         '')
call s:HL('htmlTitle',                      s:gray5,    '',         '')
call s:HL('htmlSpecialTagName',             s:purple,   '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray5,    '',         '')
call s:HL('javaScriptNull',                 s:orange,   '',         '')
call s:HL('javaScriptIdentifier',           s:purple,   '',         '')
call s:HL('javaScriptNumber',               s:orange,   '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptReserved',             s:purple,   '',         '')
" pangloss/vim-javascript
call s:HL('jsArrowFunction',                s:purple,   '',         '')
call s:HL('jsClassKeywords',                s:purple,   '',         '')
call s:HL('jsDocParam',                     s:green,    '',         '')
call s:HL('jsDocTags',                      s:cyan,     '',         '')
call s:HL('jsFuncCall',                     s:blue,     '',         '')
call s:HL('jsFunction',                     s:purple,   '',         '')
call s:HL('jsGlobalObjects',                s:yellow,   '',         '')
call s:HL('jsGlobalNodeObjects',            s:yellow,   '',         '')
call s:HL('jsNull',                         s:orange,   '',         '')
call s:HL('jsStorageClass',                 s:purple,   '',         '')
call s:HL('jsThis',                         s:red,      '',         '')
call s:HL('jsUndefined',                    s:orange,   '',         '')

" JSON
call s:HL('jsonCommentError',               s:red,      '',         'reverse')
call s:HL('jsonMissingCommaError',          s:red,      '',         'reverse')
call s:HL('jsonNoQuotesError',              s:red,      '',         'reverse')
call s:HL('jsonNumError',                   s:red,      '',         'reverse')
call s:HL('jsonStringSQError',              s:red,      '',         'reverse')
call s:HL('jsonSemicolonError',             s:red,      '',         'reverse')

" Less
call s:HL('lessAmpersand',                  s:purple,   '',         '')
call s:HL('lessClassChar',                  s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray5,    '',         '')
call s:HL('lessFunction',                   s:blue,     '',         '')

" Markdown
call s:HL('markdownBold',                   s:orange,   '',         'bold')
call s:HL('markdownCode',                   s:cyan,     '',         '')
call s:HL('markdownCodeBlock',              s:cyan,     '',         '')
call s:HL('markdownCodeDelimiter',          s:cyan,     '',         '')
call s:HL('markdownHeadingDelimiter',       s:green,    '',         '')
call s:HL('markdownHeadingRule',            s:gray4,    '',         '')
call s:HL('markdownId',                     s:purple,   '',         '')
call s:HL('markdownItalic',                 s:blue,     '',         'italic')
call s:HL('markdownListMarker',             s:navy,     '',         '')
call s:HL('markdownOrderedListMarker',      s:navy,     '',         '')
call s:HL('markdownRule',                   s:gray4,    '',         '')
call s:HL('markdownUrl',                    s:purple,   '',         '')
call s:HL('markdownUrlTitleDelimiter',      s:green,    '',         '')

" Ruby
call s:HL('rubyInterpolation',              s:cyan,     '',         '')
call s:HL('rubyInterpolationDelimiter',     s:navy,     '',         '')
call s:HL('rubyRegexp',                     s:cyan,     '',         '')
call s:HL('rubyRegexpDelimiter',            s:navy,     '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')

" Sass
call s:HL('sassAmpersand',                  s:purple,   '',         '')
call s:HL('sassClassChar',                  s:yellow,   '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:HL('xmlAttrib',                      s:yellow,   '',         '')
call s:HL('xmlEndTag',                      s:blue,     '',         '')
call s:HL('xmlTag',                         s:blue,     '',         '')
call s:HL('xmlTagName',                     s:blue,     '',         '')

" Neovim terminal colors
if has('nvim')
    let g:terminal_color_0 = s:gray1[0]
    let g:terminal_color_1 = '#dd6880'
    let g:terminal_color_2 = '#83b879'
    let g:terminal_color_3 = '#ddb76f'
    let g:terminal_color_4 = '#7aa5e6'
    let g:terminal_color_5 = '#ad88e2'
    let g:terminal_color_6 = '#63c9d6'
    let g:terminal_color_7 = s:gray5[0]
    let g:terminal_color_8 = s:gray4[0]
    let g:terminal_color_9 = '#f1879d'
    let g:terminal_color_10 = '#89cf7c'
    let g:terminal_color_11 = '#f1ce8e'
    let g:terminal_color_12 = '#9dc1f6'
    let g:terminal_color_13 = '#c8aaf3'
    let g:terminal_color_14 = '#80e0ec'
    let g:terminal_color_15 = '#c1cdd3'
    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = g:terminal_color_7
endif
