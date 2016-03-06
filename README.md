# Yowish<small>, a yellowish dark vim colorscheme</small>

![Badge version](https://img.shields.io/badge/version-0.7.0-blue.svg?style=flat-square "Badge for version")
![License version](https://img.shields.io/badge/license-public-blue.svg?style=flat-square "Badge for license")

## Description

Yowish is a vim dark theme similar to [outlander](https://atom.io/themes/outlander-syntax), with some yellow in it :smiley:  
It works well on both GUI & 256-colors terminal.

![Viml code](.img/viml.png "A vimscript sample")

See supported [file types](#filetypes), customized [plugins](#plugins) and [screens](#screens).

## GUI vs terminal

The colors in 256-color terminals are quite similar to the ones in the GUI version.  
Here is a comparison between GVim and xfce-terminal with a standard color palette:

![GUI vs Terminal](.img/term-vs-gui.png "GVim vs xfce-terminal screenshots")

## Supported file types <a id="filetypes"></a>

Normally, any file type should be good looking, but some are more customized than others, check the [screens](#screens).

## Syntax plugins

The theme uses some elements from the following syntax plugins:

* `html`: [othree/html5.vim](https://github.com/othree/html5.vim)
* `pug`: [vim-pug](https://github.com/digitaltoad/vim-pug) (Formerly `jade`)
* `javascript`:
  - [othree/yajs.vim](https://github.com/othree/yajs.vim)
  - [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* `markdown`: [gabrielelana/vim-markdown](https://github.com/gabrielelana/vim-markdown)
* `php`: [StanAngeloff/php.vim](https://github.com/StanAngeloff/php.vim)

## Other plugins <a id="plugins"></a>

The theme provides custom colors for the following plugins (Note that you can disable them, see [configuration](#configuration) for that).

* [Agit](http://github.com/cohama/agit.vim)  
![agit](.img/agit.jpg "Agit")

* [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)  
![CtrlP](.img/ctrlp.jpg "CtrlP")

* [NERDTree](https://github.com/scrooloose/nerdtree)  
![NERDTree](.img/nerdtree.jpg "NERDTree")

* [Signjk](https://github.com/haya14busa/vim-signjk-motion)  
![Signjk](.img/signjk.png "Signjk")

* Two [airline](https://github.com/vim-airline/vim-airline) themes:  
  * yowish  
  ![Yowish theme for Airline](.img/airline.jpg "Different vim modes in airline with yowish")
  * yowishU (*U for Unity*)  
  ![YowishU theme for Airline](.img/airline-yowishU.jpg "Different vim modes in airline with yowishU")

* [Unite](https://github.com/Shougo/unite.vim)  
![Unite](.img/unite.jpg "Unite")

## Installation

Copy the distributed files into Vim runtime directory which is usually `~/.vim/`, or `$HOME/vimfiles` on Windows.

Or in a better way, use a vim plugin manager:

| Plugin manager                                         | In vimrc                         | Installation command |
|--------------------------------------------------------|----------------------------------|----------------------|
| [Vim-plug](https://github.com/junegunn/vim-plug)       | `Plug 'KabbAmine/yowish.vim'`      | `PlugInstall`          |
| [Vundle](https://github.com/gmarik/Vundle.vim)         | `Plugin 'KabbAmine/yowish.vim'`    | `PluginInstall`        |
| [NeoBundle](https://github.com/Shougo/neobundle.vim)   | `NeoBundle 'KabbAmine/yowish.vim'` | `NeoBundleInstall`     |

## Configuration <a id="configuration"></a>

The configuration of the plugin is stocked in one global dictionary `g:yowish`.  
To define/modify an option you can either:

```vim
let g:yowish = {}
let g:yowish.option1 = 'foo'
let g:yowish.option2 = 0
```

Or:

```vim
let g:yowish = {
			\ 'option1': 'foo',
			\ 'option2': 0
		\ }
```

## Options

**Be sure to define options before loading the colorscheme**

| key                       | default value             | description                      |
| ------------------------- | ------------------------- | -------------------------------- |
| `term_italic`             | `0`                       | Use italic in terminal           |
| `ctrlp`                   | `1`                       | Custom colors for CtrlP          |
| `unite`                   | `1`                       | Custom colors for Unite          |
| `nerdtree`                | `1`                       | Custom colors for NERDTree       |
| `agit`                    | `1`                       | Custom colors for Agit           |
| `signjk`                  | `1`                       | Custom colors for Signjk         |

## Screens <a id="screens"></a>

Feel free to add screens for other file types or plugins.

`css`

![Css sample](.img/css.jpg)

`html`

![Html sample](.img/html.jpg)

`pug`

![Pug sample](.img/pug.jpg)

`javascript`

![Javascript sample](https://cloud.githubusercontent.com/assets/5658084/10515974/a5aafeac-735e-11e5-94e2-a7b82c5cbf10.png)

`php`

![Php sample](.img/php.jpg)

`ruby`

![Ruby sample thanks to @](https://cloud.githubusercontent.com/assets/5658084/10513493/a101f53a-7350-11e5-9abb-1e014a8c294f.png)

`scss`

![Scss sample](.img/scss.jpg)

`sh`

![Sh sample](.img/sh.jpg)

Diff with `coffeescript` files.

![Diff](.img/diff.jpg "Vim diff with coffeescript")

## Notes

Being the 1st vim colorscheme that I'm developing, feel free to report issues.
Pull requests are welcome, but please provide a before/after screenshot.

And if you're asking yourself, yeah I like yellow :smile:

## Todo

- Support more plugins if needed
- Better support for the following file types (PR are more than welcome):
  - [ ] `python`
  - [ ] `c`
  - [ ] `java`

## Thanks

Thanks to Bram Moolenaar for creating the best piece of software in the world :heart:

Thanks to you if you're using yowish.
