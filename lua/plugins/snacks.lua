vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/folke/snacks.nvim",
})

local snacks = require("snacks")
snacks.setup({
	bigfile = { enabled = true },
	dashboard = { enabled = false },
	explorer = { enabled = true },
	image = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 3000,
	},
	picker = {
		enabled = true,
		sources = {
			files = {
				hidden = false,
				ignored = false,
				win = {
					input = {
						keys = {
							["<S-h>"] = "toggle_hidden",
							["<S-i>"] = "toggle_ignored",
						},
					},
				},
				exclude = {
					"**/.git/*",
					"**/node_modules/*",
					"**/.pnpm-store/*",
					"**/.DS_Store",
					"build/*",
					"coverage/*",
					"dist/*",
				},
			},
			grep = {
				hidden = false,
				ignored = false,
				win = {
					input = {
						keys = {
							["<S-h>"] = "toggle_hidden",
							["<S-i>"] = "toggle_ignored",
						},
					},
				},
				exclude = {
					"**/.git/*",
					"**/node_modules/*",
					"**/.pnpm-store/*",
					"**/.DS_Store",
					"build/*",
					"coverage/*",
					"dist/*",
				},
			},
			grep_buffers = {
        hidden = false,
        ignored = false,
      },
			explorer = {
				hidden = true,
        ignored = true,
				supports_live = true,
				auto_close = true,
				focus = "list",
				git_status = true,
				git_status_open = true,
				git_untracked = true,
				jump = { close = true },
				tree = true,
				watch = true,
				exclude = {
					".git",
					".pnpm-store",
					".venv",
					"node_modules",
				},
				win = {
					list = {
						keys = {
							["<BS>"] = "explorer_up",
							["a"] = "explorer_add",
							["d"] = "explorer_del",
							["r"] = "explorer_rename",
							["c"] = "explorer_copy",
							["y"] = "explorer_yank",
							["<c-c>"] = "explorer_cd",
							["."] = "explorer_focus",
						},
					},
				},
			},
		},
	},
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = false },
	words = { enabled = false },
})

local keys = {
	-- Top Pickers & Explorer
	{
		"<leader><space>",
		function()
			snacks.picker.smart()
		end,
		desc = "Smart Find Files",
	},
	{
		"<leader>/",
		function()
			snacks.picker.grep()
		end,
		desc = "Grep",
	},
	{
		"<leader>:",
		function()
			snacks.picker.command_history()
		end,
		desc = "Command History",
	},
	{
		"<leader>e",
		function()
			snacks.explorer()
		end,
		desc = "File Explorer",
	},

	-- find
	{
		"<leader>fc",
		function()
			snacks.picker.files({ cwd = vim.fn.stdpath("config") })
		end,
		desc = "Find Config File",
	},
	{
		"<leader>ff",
		function()
			snacks.picker.files()
		end,
		desc = "Find Files",
	},
	{
		"<leader>fg",
		function()
			snacks.picker.git_files()
		end,
		desc = "Find Git Files",
	},
	{
		"<leader>fp",
		function()
			snacks.picker.projects()
		end,
		desc = "Projects",
	},
	{
		"<leader>fr",
		function()
			snacks.picker.recent()
		end,
		desc = "Recent",
	},

	-- git
	{
		"<leader>gb",
		function()
			snacks.picker.git_branches()
		end,
		desc = "Git Branches",
	},
	{
		"<leader>gl",
		function()
			snacks.picker.git_log()
		end,
		desc = "Git Log",
	},
	{
		"<leader>gL",
		function()
			snacks.picker.git_log_line()
		end,
		desc = "Git Log Line",
	},
	{
		"<leader>gs",
		function()
			snacks.picker.git_status()
		end,
		desc = "Git Status",
	},
	{
		"<leader>gS",
		function()
			snacks.picker.git_stash()
		end,
		desc = "Git Stash",
	},
	{
		"<leader>gd",
		function()
			snacks.picker.git_diff()
		end,
		desc = "Git Diff (Hunks)",
	},
	{
		"<leader>gf",
		function()
			snacks.picker.git_log_file()
		end,
		desc = "Git Log File",
	},
	{
		"<leader>gB",
		function()
			snacks.gitbrowse()
		end,
		desc = "Git Browse",
		mode = { "n", "v" },
	},
	-- Grep
	{
		"<leader>sg",
		function()
			snacks.picker.grep()
		end,
		desc = "Grep",
	},
	{
		"<leader>sw",
		function()
			snacks.picker.grep_word()
		end,
		desc = "Visual selection or word",
		mode = { "n", "x" },
	},

	-- search
	{
		'<leader>s"',
		function()
			snacks.picker.registers()
		end,
		desc = "Registers",
	},
	{
		"<leader>s/",
		function()
			snacks.picker.search_history()
		end,
		desc = "Search History",
	},
	{
		"<leader>sa",
		function()
			snacks.picker.autocmds()
		end,
		desc = "Autocmds",
	},
	{
		"<leader>sc",
		function()
			snacks.picker.commands()
		end,
		desc = "Commands",
	},
	{
		"<leader>sh",
		function()
			snacks.picker.help()
		end,
		desc = "Help Pages",
	},
	{
		"<leader>sH",
		function()
			snacks.picker.highlights()
		end,
		desc = "Highlights",
	},
	{
		"<leader>si",
		function()
			snacks.picker.icons()
		end,
		desc = "Icons",
	},
	{
		"<leader>sj",
		function()
			snacks.picker.jumps()
		end,
		desc = "Jumps",
	},
	{
		"<leader>sk",
		function()
			snacks.picker.keymaps()
		end,
		desc = "Keymaps",
	},
	{
		"<leader>sl",
		function()
			snacks.picker.loclist()
		end,
		desc = "Location List",
	},
	{
		"<leader>sm",
		function()
			snacks.picker.marks()
		end,
		desc = "Marks",
	},
	{
		"<leader>sM",
		function()
			snacks.picker.man()
		end,
		desc = "Man Pages",
	},
	{
		"<leader>sp",
		function()
			snacks.picker.lazy()
		end,
		desc = "Search for Plugin Spec",
	},
	{
		"<leader>sq",
		function()
			snacks.picker.qflist()
		end,
		desc = "Quickfix List",
	},
	{
		"<leader>sR",
		function()
			snacks.picker.resume()
		end,
		desc = "Resume",
	},
	{
		"<leader>su",
		function()
			snacks.picker.undo()
		end,
		desc = "Undo History",
	},

	-- Diagnostic
	{
		"<leader>ds",
		function()
			snacks.picker.diagnostics_buffer()
		end,
		desc = "Search buffer",
	},
	{
		"<leader>dS",
		function()
			snacks.picker.diagnostics()
		end,
		desc = "Search",
	},

	-- LSP
	{
		"gd",
		function()
			snacks.picker.lsp_definitions()
		end,
		desc = "Goto Definition",
	},
	{
		"gD",
		function()
			snacks.picker.lsp_declarations()
		end,
		desc = "Goto Declaration",
	},
	{
		"gr",
		function()
			snacks.picker.lsp_references()
		end,
		nowait = true,
		desc = "References",
	},
	{
		"gI",
		function()
			snacks.picker.lsp_implementations()
		end,
		desc = "Goto Implementation",
	},
	{
		"gy",
		function()
			snacks.picker.lsp_type_definitions()
		end,
		desc = "Goto T[y]pe Definition",
	},
	{
		"gai",
		function()
			snacks.picker.lsp_incoming_calls()
		end,
		desc = "C[a]lls Incoming",
	},
	{
		"gao",
		function()
			snacks.picker.lsp_outgoing_calls()
		end,
		desc = "C[a]lls Outgoing",
	},
  { "<leader>ss", function() snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
  {
    "<leader>sS",
    function() snacks.picker.lsp_workspace_symbols() end,
    desc = "LSP Workspace Symbols",
  },
	-- Buffers
	{
		"<leader>bb",
		function()
			snacks.picker.buffers({ focus = "list" })
		end,
		desc = "Buffers",
	},
	{
		"<leader>bd",
		function()
			snacks.bufdelete()
		end,
		desc = "Delete Buffer",
	},
	{
		"<leader>bl",
		function()
			snacks.picker.lines()
		end,
		desc = "Buffer Lines",
	},
	{
		"<leader>bg",
		function()
			snacks.picker.grep_buffers()
		end,
		desc = "Grep Open Buffers",
	},
	{
		"<leader>b.",
		function()
			snacks.scratch()
		end,
		desc = "Toggle Scratch Buffer",
	},
	{
		"<leader>bs",
		function()
			snacks.scratch.select()
		end,
		desc = "Select Scratch Buffer",
	},

	-- Other
	{
		"<leader>r",
		function()
			snacks.rename.rename_file()
		end,
		desc = "Rename File",
	},
	{
		"<leader>nh",
		function()
			snacks.notifier.show_history()
		end,
		desc = "Notification History",
	},
	{
		"<leader>nd",
		function()
			snacks.notifier.hide()
		end,
		desc = "Dismiss All Notifications",
	},
	{
		"<c-/>",
		function()
			snacks.terminal()
		end,
		desc = "Toggle Terminal",
	},
	{
		"<c-_>",
		function()
			snacks.terminal()
		end,
		desc = "which_key_ignore",
	},
	{
		"]]",
		function()
			snacks.words.jump(vim.v.count1)
		end,
		desc = "Next Reference",
		mode = { "n", "t" },
	},
	{
		"[[",
		function()
			snacks.words.jump(-vim.v.count1)
		end,
		desc = "Prev Reference",
		mode = { "n", "t" },
	},
}

for _, map in ipairs(keys) do
	local opts = { desc = map.desc }
	local mode = map.mode or "n"
	vim.keymap.set(mode, map[1], map[2], opts)
end
