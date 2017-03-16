# Quantum
A 24-bit Vim color scheme based on Google's [Material Design palette](https://material.io/guidelines/style/color.html#).

##### Quantum
![quantum](http://i.imgur.com/NDZRnpa.png)

##### Quantum Black
![quantum-black](http://i.imgur.com/1hNWyMB.png)

### Installation
**NOTE:** This color scheme requires a terminal that supports true colors!

Install this color scheme using your preferred Vim plugin manager, then add the
following to your (n)vim configuration file:
```vim
set background=dark
set termguicolors
colorscheme quantum
```

### Options
If you prefer a black background:
```vim
let g:quantum_black=1
```

To italicize comments:
```vim
let g:quantum_italics=1
```

### Vim Airline
To use the included [Airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='quantum'
```

