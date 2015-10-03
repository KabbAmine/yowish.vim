# Yowish, a yellowish dark vim colorscheme

## Description

Yowish is a vim dark theme similar to [outlander](https://atom.io/themes/outlander-syntax), with some yellow in it :smiley: (Works well on both GUI & 256-colors terminal)

It looks good on most file types, but shows his true colors in the following ones:

- `HTML` & `CSS`
- `SASS` & `SCSS`

  ![HTML, CSS & SCSS](.img/html-css-scss.jpg "HTML, css and scss files")

- `Vim` & `vimhelp`
- `Markdown`

  ![Vim, vimhelp & markdown](.img/vim-vimhelp-markdown.jpg "Vim, vimhelp and markdown files")

- `PHP`

  ![Php, NERDtree & Undotree plugins](.img/php-nerdtree-undotree.jpg "Php file with NERDtree and Undotree")

## GUI vs terminal

The colors in 256-color terminals are quite similar to the ones in the GUI version.

Here is a comparison between GVim and xfce-terminal with a standard color palette:
![GUI vs Terminal](.img/term-vs-gui.png "GVim vs xfce-terminal screenshot")

## Plugins

The theme provides custom colors for the following plugins:
* [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)

  ![CtrlP](.img/ctrlp.jpg "CtrlP")

* [NERDTree](https://github.com/scrooloose/nerdtree)

  ![NERDTree](.img/nerdtree.jpg "NERDTree")

* An [airline](https://github.com/bling/vim-airline) theme

  ![Yowish theme for Airline](.img/airline.jpg "Different vim modes in airline with yowish")

## Installation

Copy the distributed files into Vim runtime directory which is usually `~/.vim/`, or `$HOME/vimfiles` on Windows.

Or in a better way, use a vim plugin manager:

| Plugin manager                                         | In vimrc                         | Installation command |
|--------------------------------------------------------|----------------------------------|----------------------|
| [Vim-plug](https://github.com/junegunn/vim-plug)       | `Plug 'KabbAmine/yowish.vim'`      | `PlugInstall`          |
| [Vundle](https://github.com/gmarik/Vundle.vim)         | `Plugin 'KabbAmine/yowish.vim'`    | `PluginInstall`        |
| [NeoBundle](https://github.com/Shougo/neobundle.vim)   | `NeoBundle 'KabbAmine/yowish.vim'` | `NeoBundleInstall`     |

## Notes

Being the 1st vim colorscheme that I'm developing, feel free to report issues and PR.

And if you're asking yourself, yeah I like yellow color :smile:

## Todo

- Better support for `python`, `c` and `java`...

## Thanks

Thank to Bram Moolenaar for creating the best piece of software in the world :heart:

Thank to you if you're using yowish.
