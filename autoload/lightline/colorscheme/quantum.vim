if(exists("g:lightline"))
    " Color palette
    let s:gray1     = g:quantum_black ? '#212121' : '#263238'
    let s:gray2     = g:quantum_black ? '#292929' : '#2c3a41'
    let s:gray3     = g:quantum_black ? '#474646' : '#425762'
    let s:gray4     = g:quantum_black ? '#6a6c6c' : '#658494'
    let s:gray5     = g:quantum_black ? '#b7bdc0' : '#aebbc5'
    let s:red       = '#dd7186'
    let s:green     = '#87bb7c'
    let s:yellow    = '#d5b875'
    let s:blue      = '#70ace5'
    let s:purple    = '#a48add'
    let s:cyan      = '#69c5ce'
    let s:orange    = '#d7956e'
    let s:indigo    = '#7681de'

    let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

    let s:p.normal.left = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
    let s:p.normal.right = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
    let s:p.normal.middle = [ [ s:gray4, s:gray2 ] ]
    let s:p.normal.error = [ [ s:gray2, s:red ] ]
    let s:p.normal.warning = [ [ s:gray2, s:yellow ] ]

    let s:p.insert.left = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]
    let s:p.insert.right = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]

    let s:p.replace.left = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]
    let s:p.replace.right = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]

    let s:p.visual.left = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]
    let s:p.visual.right = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]

    let s:p.inactive.left =  [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
    let s:p.inactive.right = [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
    let s:p.inactive.middle = [ [ s:gray4, s:gray2 ] ]

    let s:p.tabline.left = [ [ s:gray5, s:gray3 ] ]
    let s:p.tabline.middle = [ [ s:gray4, s:gray2 ] ]
    let s:p.tabline.right = [ [ s:gray2, s:blue ] ]
    let s:p.tabline.tabsel = [ [ s:gray2, s:blue ] ]

    let g:lightline#colorscheme#quantum#palette = lightline#colorscheme#fill(s:p)
endif
