return {
  'nvim-mini/mini.map',
	version = '*',
	config = function()
		require("mini.map").setup()
		vim.keymap.set('n', '<Leader>mc', MiniMap.close, { desc = "Close minimap" })
		vim.keymap.set('n', '<Leader>mf', MiniMap.toggle_focus, { desc = "Focus minimap" })
		vim.keymap.set('n', '<Leader>mo', MiniMap.open, { desc = "Open minimap" })
		vim.keymap.set('n', '<Leader>mr', MiniMap.refresh, { desc = "Refresh minimap" })
		vim.keymap.set('n', '<Leader>ms', MiniMap.toggle_side, { desc = "Toggle minimap side" })
		vim.keymap.set('n', '<Leader>mt', MiniMap.toggle, { desc = "Toggle minimap" })
		-- MiniMap.open()
	end,
}
