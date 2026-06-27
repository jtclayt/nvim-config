vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local conform = require("conform")
conform.setup({
	notify_on_error = false,
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "sytlua" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		markdown = { "prettier" },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>bf", function()
	conform.format({ async = true })
end, { desc = "Format" })
