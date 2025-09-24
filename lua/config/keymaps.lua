-- more error mappings
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>",
	{ desc = "Expand diagnostic" })
-- jump to errors
vim.keymap.set("n", "[e", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Jump to previous error" })
vim.keymap.set("n", "]e", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Jump to next error" })
