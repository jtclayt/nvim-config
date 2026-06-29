vim.pack.add({
	{ src = "https://github.com/L3MON4D3/LuaSnip", version = vim.version.range("2.*") },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
})

require("luasnip").setup()

local blink = require("blink.cmp")
blink.setup({
	keymap = {
		-- Default keymap:
		-- <c-y> to accept ([y]es) the completion
		-- <tab>/<s-tab>: move to right/left of your snippet expansion
		-- <c-space>: Open menu or open docs if already open
		-- <c-n>/<c-p> or <up>/<down>: Select next/previous item
		-- <c-e>: Hide menu
		-- <c-s>: Toggle signature help
		preset = "default",
		["<C-u>"] = { "scroll_signature_up", "fallback" },
		["<C-d>"] = { "scroll_signature_down", "fallback" },
		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},
	appearance = { nerd_font_variant = "mono" },
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	snippets = { preset = "luasnip" },
	fuzzy = { implementation = "lua" },
	signature = { enabled = true },
})
