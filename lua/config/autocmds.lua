vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt.shiftwidth = 2
		vim.opt.tabstop = 2
		vim.opt.softtabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "odin",
	callback = function()
		vim.treesitter.start()
	end,
})
