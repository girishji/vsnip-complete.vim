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

Following options are supported.

Option|Type|Description
------|----|-----------
`enable`|`Boolean`|Enable this extension. Default is `true`.
`priority`|`Number`|Higher priority items are shown at the top. Default is `11`.
`maxCount`|`Number`|Maximum number of items shown. Default is `10`.
`adaptNonKeyword`|`Boolean`|(experimental) When completing '#i' candidates sourced from snippets adjust completion such that they are compatible with items starting with 'i' as returned by LSP. Default is `false`.

Default options are as follows.

```
vim9script
export var options: dict<any> = {
    enable: true,
    priority: 11,
    maxCount: 10,
    adaptNonKeyword: false,
}
```

Options can be modified using `g:VimCompleteOptionsSet()`. It takes a
dictionary as argument. If you are using
[vim-plug](https://github.com/junegunn/vim-plug) then call this function through
__VimEnter__ autocommand event.

```
autocmd VimEnter * g:VimCompleteOptionsSet(options)
```
