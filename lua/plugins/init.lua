require("plugins.lsp")
require("plugins.blink")
require("plugins.treesitter")
require("plugins.snacks")
require("plugins.mini")
require("plugins.conform")
require("plugins.which-key")
require("plugins.colorscheme")
require("plugins.bufferline")
require("plugins.autopairs")
require("plugins.todo")

if vim.g.enable_markdown then
	require("plugins.render-markdown")
end

if vim.g.enable_obsidian then
	require("plugins.obsidian")
end
