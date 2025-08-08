return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
		},
		config = function()
			-- Modules
			local telescope = require("telescope")
			local telescope_builtin = require("telescope/builtin")
			-- Setup
			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			telescope.load_extension("ui-select")

			-- Keymaps
			vim.keymap.set("n", "<Leader>ff", telescope_builtin.find_files, { desc = "Find file" })
			vim.keymap.set("n", "<Leader>fw", telescope_builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<Leader>b", function()
				telescope_builtin.buffers({
					sort_mru = true,
				})
				vim.api.nvim_input("<Esc>")
			end, { desc = "Active buffers" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
}
