return {
	"f-person/git-blame.nvim",
	even = "VeryLazy",
	opts = {
		enabled = false,
		message_template = " <author> • <summary> • <date> • <<sha>>",
		date_format = "%m-%d-%y",
		highlight_group = "CursorLine",
		vim.keymap.set("n", "<Leader>gb", ":GitBlameToggle<CR>", { desc = "Git blame" })
	}
}
