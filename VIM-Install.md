# VIM/Neovim Install Guide

Using this template with Vim/Neovim can be difficult but is rewarding when you have it working.

## Installs

### Vim Plug

You will need **tinymist** and **typst** installed. To install typst refer to **README.md**. Tinymist will be used as an LSP server for preview and diagnostics. To install tinymist on linux use:

`sudo pacman -S tinymist` on Arch,

otherwise check the distribution manager of your distro.

To install on windows the chocolatey package manager can be used with:

`choco install tinymist`.

When these are installed I recommend the 'typst preview' plugin. This can be found [here](https://github.com/chomosuke/typst-preview.nvim), and my vim plug install code is here:

`Plug 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}`

After this is done run `PlugInstall`.

### vim.pack (native to 0.12+)

You can install **tinymist** separately or you can use Mason to manage it.
There are multiple ways to organise your configuration (e.g. below) but here are the main blocks you need:

```bash
.
├── init.lua
├── lsp
│   └── tinymist.lua
├── lua
│   └── lsp.lua
└── plugin
    └── mason.lua
```

./init.lua
```lua
require('lsp')
```

./lua/lsp.lua
```lua
vim.pack.add({ { src = "https://github.com/neovim/nvim-lspconfig" } })
vim.lsp.enable({ "tinymist", })  -- Can add lua_ls, pylsp, etc.
vim.diagnostic.config({ virtual_text = true })
```

> [!NOTE]
> The filename here should be the same as above in `vim.lsp.enable`.

./lsp/tinymist.lua
```lua
local lsp_functions = require('lsp_functions')
return {
    on_attach = function(client, bufnr)
        lsp_functions.on_attach(client, bufnr)
        local function pin_main(value, title)
            client:exec_cmd({
                title = title,
                command = 'tinymist.pinMain',
                arguments = { value },
            }, { bufnr = bufnr })
        end

        vim.keymap.set('n', '<leader>tp', function()
            pin_main(vim.api.nvim_buf_get_name(bufnr), 'pin')
        end, { buffer = bufnr, desc = '[T]inymist [P]in' })

        vim.keymap.set('n', '<leader>tu', function()
            pin_main(vim.v.null, 'unpin')
        end, { buffer = bufnr, desc = '[T]inymist [U]npin' })

        vim.keymap.set('n', '<leader>tt', function()
            pin_main(vim.api.nvim_buf_get_name(bufnr), 'pinpreview')
            vim.cmd('TypstPreview')
        end, { buffer = bufnr, desc = 'Tinymist Pin and Preview' })
    end,

    cmd = { "tinymist" },
    filetypes = { "typst" },
    settings = {}
}
```

> [!NOTE]
> Instead of requiring tinymist here (using `ensure_installed`) you can instead use `:Mason` to install it interactively within Neovim.

./plugin/mason.lua
```lua
vim.pack.add({ { src = 'https://github.com/mason-org/mason.nvim' } })
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tinymist" },
})

```

Included are three keymaps (the first two recommend by typst-preview) to pin the main file.
This prevents the issue of references not being found in child files.
Navigate to the main file and either `<leader>tp` then `:TypstPreview` or just simply `<leader>tt>` to pin and start the preview.

The preview can be configured to a browser or a PDF viewer (e.g. Zathura) but there are compilation delays using a PDF viewer.


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

- Smooth navigation in insert/visual mode
- Real-time error highlighting
- Reference search by keywords

These may be added over time but represent a substantial time investment.
