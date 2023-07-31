#### Vsnip Snippet Completion for Vimcomplete Plugin

This plugin provides snippet completion for
[Vimcomplete](https://github.com/girishji/vimcomplete) autocompletion plugin.
Snippets are provided by [vim-vsnip](https://github.com/hrsh7th/vim-vsnip).

# Requirements

- Vim >= 9.0
- [Vimcomplete](https://github.com/girishji/vimcomplete)
- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [vim-vsnip-integ](https://github.com/hrsh7th/vim-vsnip-integ)

Optional:

- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

# Installation

Install this plugin after installing [Vimcomplete](https://github.com/girishji/vimcomplete).

Install using [vim-plug](https://github.com/junegunn/vim-plug).

```
vim9script
plug#begin()
Plug 'girishji/vsnip-complete.vim'
plug#end()
```

For those who prefer legacy script.

```
call plug#begin()
Plug 'girishji/vsnip-complete.vim'
call plug#end()
```

Or use Vim's builtin package manager.

# Configuration

Default options are as follows.

```
vim9script
export var options: dict<any> = {
    enable: true,    # 'false' to disable this extension
    priority: 11,    # Higher priority items are shown at the top
    maxCount: 10,    # Maximum number of items shown
}
```

Options can be modified using `g:VimCompleteOptionsSet()`. It takes a
dictionary as argument. If you are using
[vim-plug](https://github.com/junegunn/vim-plug) then call this function through
__VimEnter__ autocommand event.

```
autocmd VimEnter * g:VimCompleteOptionsSet(options)
```
