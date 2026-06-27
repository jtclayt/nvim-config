vim.pack.add({
	"https://github.com/obsidian-nvim/obsidian.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
})

require("obsidian").setup({
	legacy_commands = false,

	workspaces = {
		{
			name = "personal",
			path = "/home/jc/obsidian/little_gulps",
		},
	},

	-- Optional, customize how note IDs are generated given an optional title.
	---@param title string|?
	---@return string
	note_id_func = function(title)
		-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
		-- In this case a note with the title 'My new note' will be given an ID that looks
		-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
		local suffix = ""
		if title ~= nil then
			-- If title is given, transform it into valid file name.
			suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		else
			-- If title is nil, just add 4 random uppercase letters to the suffix.
			for _ = 1, 4 do
				suffix = suffix .. string.char(math.random(65, 90))
			end
		end
		return tostring(suffix)
	end,

	-- Optional, for templates (see below).
	templates = {
		folder = "templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
		-- A map for custom variables, the key should be the variable and the value a function
		substitutions = {},
	},

	picker = {
		name = "snacks.picker",
	},

	checkbox = {
		enable = false,
		order = { " ", "-", "x", "~" },
	},

	ui = {
		bullets = {
			enable = false,
			char = "•",
			hl_group = "ObsidianBullet",
		},
	},
})

vim.keymap.set({ "n" }, "<leader>of", ":Obsidian follow_link<CR>", { desc = "Follow link" })
vim.keymap.set({ "n", "v", "x" }, "<leader>os", ":Obsidian search<CR>", { desc = "Search" })
vim.keymap.set({ "n" }, "<leader>ol", ":Obsidian backlinks<CR>", { desc = "List backlinks" })
vim.keymap.set({ "n" }, "<leader>ot", ":Obsidian tags<CR>", { desc = "List tags" })
vim.keymap.set({ "v", "x" }, "<leader>oe", ":Obsidian extract_note<CR>", { desc = "Extract note" })
vim.keymap.set({ "n" }, "<leader>on", ":Obsidian template note.md<CR>", { desc = "Apply note template" })
vim.keymap.set({ "n" }, "<leader>ob", ":Obsidian template book.md<CR>", { desc = "Apply book template" })
