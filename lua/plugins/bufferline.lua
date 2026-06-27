vim.pack.add({ "https://github.com/akinsho/bufferline.nvim" })
require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "neo-tree",
				text = "Neo-tree",
				highlight = "Directory",
				text_align = "left",
			},
			{ filetype = "snacks_layout_box" },
		},
	},
})
