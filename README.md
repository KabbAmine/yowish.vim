# Yowish, a yellowish dark vim colorscheme

## Description

Yowish is a vim dark theme similar to [outlander](https://atom.io/themes/outlander-syntax), with some yellow in it :smiley: (Works well on both GUI & 256-colors terminal).

## GUI vs terminal

The colors in 256-color terminals are quite similar to the ones in the GUI version.

Here is a comparison between GVim and xfce-terminal with a standard color palette:
![GUI vs Terminal](.img/term-vs-gui.png "GVim vs xfce-terminal screenshots")

## Supported file types

Logically, any file type should be good looking, but the following ones are more customized than others:

- `html`
- `vim` & `vimhelp`
- `css`
- `sass` & `scss`
- `php`
- `markdown`

## Syntax plugins

The theme uses some elements from the following syntax plugins:

* `html`: [othree/html5.vim](https://github.com/othree/html5.vim)
* `php`: [StanAngeloff/php.vim](https://github.com/StanAngeloff/php.vim)
* `markdown`: [gabrielelana/vim-markdown](https://github.com/gabrielelana/vim-markdown)

## Other plugins

The theme provides custom colors for:

* [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)

  ![CtrlP](.img/ctrlp.jpg "CtrlP")

* [NERDTree](https://github.com/scrooloose/nerdtree)

  ![NERDTree](.img/nerdtree.jpg "NERDTree")

* And an [airline](https://github.com/bling/vim-airline) theme

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

Being the 1st vim colorscheme that I'm developing, feel free to report issues.
Pull requests are welcome, but please provide a before/after screenshot.

And if you're asking yourself, yeah I like yellow color :smile:

## Todo

- Support more plugins
- Better support for:
  - [ ] [`javascript`](https://github.com/KabbAmine/yowish.vim/issues/3)
  - [ ] [`ruby`](https://github.com/KabbAmine/yowish.vim/issues/1)
  - [ ] `python`
  - [ ] `c`
  - [ ] `java`
- Add screens more up-to-date
- A light theme?

## Thanks

Thanks to Bram Moolenaar for creating the best piece of software in the world :heart:

Thanks to you if you're using yowish.
