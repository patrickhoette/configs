# Vim

## Plugins

For a plugin manager I use Vundle. I tried Pathogen before. It worked, but didn't like it too much. Vundle is great and easy to use. I did add an alias into my fish configuration to run install, clean and update commands.

__Fish Aliases Vundle__

```shell
alias -s vpi='vim +PluginInstall +PluginClean +PluginUpdate +qall'
```

### List
* [Vundle](https://github.com/VundleVim/Vundle.vim)
* [vim-css-color](https://github.com/ap/vim-css-color)
* [vim-fish](https://github.com/dag/vim-fish)
* [vim-json](https://github.com/elzr/vim-json)
* [kotlin-vim](https://github.com/udalov/kotlin-vim)
* [vim-pandoc](https://github.com/vim-pandoc/vim-pandoc)
* [vim-pandoc-syntax](https://github.com/vim-pandoc/vim-pandoc-syntax)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

### Configurations

#### vim-pandoc

__Turning off folding__

```shell
let g:pandoc#modules#disabled=["folding"]
```

## Theme

[vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark)
