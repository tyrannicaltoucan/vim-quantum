# Quantum
A Vim color scheme inspired by the [Material Design palette](https://material.google.com/style/color.html#color-color-palette).

##### Quantum
![quantum](http://i.imgur.com/Evhtd56.png)

##### Quantum Black
![quantum-black](http://i.imgur.com/1pHny1U.png)

### Installation
Install manually by downloading this theme to `~/.vim/colors` or use a plugin manager.

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
To set the included [Airline](https://github.com/vim-airline/vim-airline) theme:
```vim
let g:airline_theme='quantum'
```

To enable the darker background setting:
```vim
let g:quantum_black = 1
```

To enable italics:
```vim
let g:quantum_italics = 1
```
> *Italics are not supported on all terminals!*

### TODO: Features & Improvments
- [ ] Terminal themes (iTerm, Xresources, Terminal.app)
- [ ] Improve language specific highlighting
- [ ] Support for various plugins

---
Copyright © 2016 Brandon Siders. Released under the MIT License.
