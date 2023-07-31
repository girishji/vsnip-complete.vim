if !has('vim9script') ||  v:version < 900
    " Needs Vim version 9.0 and above
    finish
endif

vim9script

import 'vimcompletor.vim'
import autoload '../autoload/snippet_complete.vim' as complete

def Register()
    var o = complete.options
    if !o->has_key('enable') || o.enable
	var ftypes = o->get('filetypes', ['*'])
	vimcompletor.Register('vsnip', complete.Completor, ftypes, o->get('priority', 11))
    else
	vimcompletor.Unregister('vsnip')
    endif
enddef

autocmd User VimCompleteLoaded ++once Register()

def OptionsChanged()
    var opts = vimcompletor.GetOptions('vsnip')
    if !opts->empty()
	complete.options->extend(opts)
	Register()
    endif
enddef

autocmd User VimCompleteOptionsChanged ++once OptionsChanged()
