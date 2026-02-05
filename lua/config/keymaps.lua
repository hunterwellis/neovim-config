-- quick normal mode command
vim.keymap.set("v", "<leader>n", ":norm ",
  { desc = "':norm' command" })

-- quickly parse/organize logs
vim.keymap.set("x", "<leader>da", [["zy<Esc>:g/<C-R>z/d<CR>]],
	{ desc = "delete all lines with visual selection" })
vim.keymap.set("n", "<leader>da", [[viw"zy<Esc>:g/<C-R>z/d<CR>]],
	{ desc = "delete all lines with word" })

vim.keymap.set("x", "aleader>de", [["zy<Esc>:g!/<C-R>z/d<CR>:noh<CR>]],
	{ desc = "delete all lines without visual selection" })
vim.keymap.set("n", "<leader>de", [[viw"zy<Esc>:g!/<C-R>z/d<CR>:noh<CR>]],
	{ desc = "delete all lines without word" })

-- find and replace
vim.keymap.set("x", "<leader>fr", [["zy<Esc>:%s/<C-R>z//g<Left><Left>]],
	{ desc = "find and replace visual selection" })
vim.keymap.set("n", "<leader>fr", [[viw"zy<Esc>:%s/<C-R>z//g<Left><Left>]],
	{ desc = "find and replace word" })

-- sessions
vim.keymap.set("n", "<leader>ss", ":mksession! .session.vim<CR>",
	{ desc = "Save vim session (.session.vim)" })
vim.keymap.set("n", "<leader>rr", ":source .session.vim<CR>",
	{ desc = "Revive vim session (.session.vim)" })

-- marks
vim.keymap.set("n", "<leader>dm", ":delmarks!<CR>",
	{ desc = "delete marks" })

-- escape terminal window
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>",
	{ noremap = true })

-- lsp errors
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>",
  { desc = "Expand diagnostic" })
vim.keymap.set("n", "[e", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Jump to previous error" })
vim.keymap.set("n", "]e", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Jump to next error" })

-- toggle column highlight
function ToggleColorColumn()
	if vim.wo.colorcolumn == "80" then
		vim.wo.colorcolumn = ""
	else
		vim.wo.colorcolumn = "80"
	end
end
vim.api.nvim_create_user_command("ToggleColorColumn", ToggleColorColumn, {})
vim.keymap.set("n", "<leader>cc", ":ToggleColorColumn<CR>",
  { desc = "toggle colorcolumn" })
