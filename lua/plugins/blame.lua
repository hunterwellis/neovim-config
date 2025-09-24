return {
	"f-person/git-blame.nvim",
	even = "VeryLazy",
	opts = {
		enabled = false,
		message_template = " <author> • <date> • <summary> • <<sha>>",
		date_format = "%m-%d-%y",
		vim.keymap.set("n", "<Leader>gb", ":GitBlameToggle<CR>", { desc = "Git blame" })
	}
}
