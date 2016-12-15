# Quantum
A Vim color scheme based on the [Material Design palette](https://material.google.com/style/color.html#color-color-palette).

##### Quantum
![quantum](http://i.imgur.com/NDZRnpa.png)

##### Quantum Black
![quantum-black](http://i.imgur.com/1hNWyMB.png)

### Installation
Use a plugin manager, or download this repo to `~/.vim/colors`.

Then add the following to your `.vimrc` or `init.vim`:
```vim
set background=dark
colorscheme quantum
```

If your terminal supports true colors, add:
###### For Vim 8.0+ and Neovim 0.1.5+
```vim
if has("termguicolors")
    set termguicolors
endif
```

###### For Neovim 0.1.3 and 0.1.4
```vim
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
```

### Options
To use the included [Airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='quantum'
```

For more contrast, enable Quantum Black:
```vim
let g:quantum_black = 1
```

If your terminal supports italics, add:
```vim
let g:quantum_italics = 1
```

---
Released under the [MIT](https://raw.githubusercontent.com/tyrannicaltoucan/dotfiles/master/LICENSE) license.
