return {
	"echasnovski/mini.indentscope",
	version = "*",
	config = function()
		local indentscope = require("mini.indentscope")

		indentscope.setup({
			draw = {
				delay = 0,
				animation = indentscope.gen_animation.none(),
			},
			symbol = "│",
			options = {
				border = "both",
				indent_at_cursor = true,
				try_as_border = true,
			},
		})

		vim.api.nvim_create_autocmd("BufEnter", {
			pattern = "*",
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"help",
				"dashboard",
				"neo-tree",
				"Trouble",
				"lazy",
			},
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})

		local indentscope_enabled = false
		local function toggle_indentscope()
			indentscope_enabled = not indentscope_enabled
			if indentscope_enabled then
				vim.b.miniindentscope_disable = false
				vim.notify("IndentScope enabled", vim.log.levels.INFO)
			else
				vim.b.miniindentscope_disable = true
				vim.notify("IndentScope disabled", vim.log.levels.WARN)
			end
		end

		vim.keymap.set("n", "<leader>is", toggle_indentscope, { desc = "Toggle IndentScope" })
	end,
}
