vim.pack.add({ "https://github.com/folke/which-key.nvim" })

local groupings = {
	{ "<leader>s", group = "[S]earch", mode = { "n", "v" } },
	{ "<leader>b", group = "[B]uffers" },
	{ "<leader>w", group = "[W]indows" },
	{ "<leader>g", group = "[G]it" },
	{ "<leader>f", group = "[F]ind" },
	{ "<leader>n", group = "[N]otifications" },
	{ "<leader>t", group = "[T]oggle" },
	{ "<leader>d", group = "[D]agnostic" },
}

if vim.g.enable_markdown then
	table.insert(groupings, { "<leader>o", group = "[O]bsidian" })
end

require("which-key").setup({
	delay = 0,
	preset = "helix",
	icons = { mappings = vim.g.have_nerd_font },
	spec = groupings,
})
