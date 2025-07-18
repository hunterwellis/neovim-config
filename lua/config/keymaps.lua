local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Window navigation
map("n", "<C-h>", ":wincmd h<CR>", { desc = "Navigate window left" })
map("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate window down" })
map("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate window up" })
map("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate window right" })

-- more error mappings
vim.api.nvim_set_keymap( "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap( "n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
-- jump to errors
vim.keymap.set('n', '[e', function()
    vim.diagnostic.jump({count= -1,float = true})
end, {desc = "Jump to previous error"})
vim.keymap.set('n', ']e', function()
    vim.diagnostic.jump({count= 1,float = true})
end, {desc = "Jump to next error"})
