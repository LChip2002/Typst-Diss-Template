# VIM/Neovim Install Guide

Using this template with Vim/Neovim can be difficult but is rewarding when you have it working. This is how I set up my environment using vim plug (adapt for your preferred plugin manager).

## Installs

You will need **tinymist** and **typst** installed. To install typst refer to **README.md**. Tinymist will be used as an LSP server for preview and diagnostics. To install tinymist on linux use:

`sudo pacman -S tinymist` on Arch,

otherwise check the distribution manager of your distro.

To install on windows the chocolatey package manager can be used with:

`choco install tinymist`.

When these are installed I recommend the 'typst preview' plugin. This can be found [here](https://github.com/chomosuke/typst-preview.nvim), and my vim plug install code is here:

`Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}`

After this is done run `PlugInstall`.

## Using Typst in Vim/Neovim

When you have finished installing via your preferred plugin manager you need to setup typst-preview. To do this run the command `:TypstPreviewUpdate`.

In order to preview the full thesis the `:TypstPreview` command **NEEDS** to be run from the main document, if it hasn't been renamed it is `Typst-PhD-Thesis.typ` or whichever degree you are pursuing. This will bring up a live-updating PDF view of your typst code.

If you are ever encountering issues you will need to manually compile the document to see the errors. This can be done with the: `:!typst compile Typst-PhD-Thesis.typ` command. This will show you an error log you can use.

## Useful Config Settings

Vim/Neovim is not made for document writing, so these are some useful config settings I use in order to make life a little easier.

### Citation search
This function brings up citations when prompted. 

```vim
function! BibComplete(findstart, base) abort
	if a:findstart
		"locate start of word (after @)
		let line = getline('.')
		let start = col('.') - 1
		while start > 0 && line[start - 1] =~# '[A-Za-z0-9:_-]'
			let start -= 1
		endwhile
		return start
	endif

	let results = []

	for line in readfile(expand('refs.bib'))
		" Match bibtex keys like @article
		let m = matchlist(line, '^@\w\+{\([^,]\+\),')
		if !empty(m) && m[1] =~? a:base
			call add(results, m[1])
		endif
	endfor

	return filter(copy(results), 'v:val =~? a:base')
endfunction
```

### Better Writing

In order to make writing more tolerable in neovim I use this autocommand group. Some of this also works with LaTeX but can be modified and changed as you please.

```vim
augroup tex_config
    autocmd!
    autocmd FileType tex,typst setlocal spell spelllang=en_gb
    autocmd FileType tex,typst setlocal wrap linebreak breakindent
    autocmd FileType tex,typst nnoremap <buffer> <Up> gk
    autocmd FileType tex,typst nnoremap <buffer> <Down> gj
    autocmd FileType tex,typst nnoremap <buffer> j gj
    autocmd FileType tex,typst nnoremap <buffer> k gk
	
	autocmd FileType typst setlocal completeopt=menuone,noselect
	autocmd FileType typst inoremap @ @<C-x><C-u>
	autocmd FileType typst setlocal completefunc=BibComplete
augroup END
```

This block achieves the following things (in order):
- Sets a British-English spellchecker
- Lets the cursor navigate linebreaks
- Allows for smooth navigating through paragraphs in normal mode
- Lets you autocomplete and suggest bibliography keys with the function defined prior


## Missing Features

This is missing a couple of features that would make the experience ever so slightly better:

- Smooth navigation in insert mode
- Real-time error highlighting
- Reference search by keywords

These may be added over time but represent a substantial time investment.
