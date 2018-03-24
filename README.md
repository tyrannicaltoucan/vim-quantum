# Quantum

A color scheme based on Google's [Material Design palette](https://material.io/guidelines/style/color.html#color-color-palette).

> **NOTE:** Quantum requires a terminal or GUI that supports true-colors!

##### Quantum
![quantum](https://i.imgur.com/gdWhDrA.png)

##### Quantum Black
![quantum-black](https://i.imgur.com/VzPs0Uf.png)

### Installation

Install this color scheme using your preferred Vim plugin manager, then add the
following to your vim configuration file:

```vim
set background=dark
set termguicolors
colorscheme quantum
```

### Options

> **NOTE:** Configure all options *before* setting `colorscheme`!

To swap the default background colors with blacker ones:
```vim
let g:quantum_black=1
colorscheme quantum
```

To italicize the comments:
```vim
let g:quantum_italics=1
```

### Status Bar Support

Quantum has themes for both [vim-airline](https://github.com/vim-airline/vim-airline) as well
as [lightline](https://github.com/itchyny/lightline.vim).

Install the statusbar plugin of your choice then set the theme in your
vim config:

Airline:
```vim
let g:airline_theme='quantum'
```

Lightline:
```vim
let g:lightline = {
      \ 'colorscheme': 'quantum',
      \ }
```
