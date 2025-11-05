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
			vim.keymap.set("n", "<Leader>tf", function()
				telescope_builtin.find_files({
					shorten_path = true,
					previewer = false,
				})
			end, { desc = "Find file" })
			vim.keymap.set("n", "<Leader>tw", telescope_builtin.live_grep, { desc = "Live grep" })
			vim.keymap.set("n", "<leader>*", telescope_builtin.grep_string, { desc = "Grep word" })
			vim.keymap.set("v", "<leader>*", function()
				local start_pos = vim.fn.getpos("v")
				local end_pos = vim.fn.getpos(".")
				local line_start, col_start = start_pos[2], start_pos[3]
				local line_end, col_end = end_pos[2], end_pos[3]

				if line_start > line_end or (line_start == line_end and col_start > col_end) then
					line_start, line_end = line_end, line_start
					col_start, col_end = col_end, col_start
				end

				local lines = vim.fn.getline(line_start, line_end)
				if #lines == 0 then
					return
				end

				lines[#lines] = string.sub(lines[#lines], 1, col_end)
				lines[1] = string.sub(lines[1], col_start)

				local selection = table.concat(lines, "\n")
				selection = selection:gsub("\n", " ")

				telescope_builtin.live_grep({ default_text = selection })
			end, { desc = "Grep visual" })
			vim.keymap.set("n", "<Leader>tb", function()
				telescope_builtin.buffers({
					shorten_path = true,
					previewer = false,
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
