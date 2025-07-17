local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Window navigation
map("n", "<C-h>", ":wincmd h", { desc = "Navigate window left" })
map("n", "<C-j>", ":wincmd j", { desc = "Navigate window down" })
map("n", "<C-k>", ":wincmd k", { desc = "Navigate window up" })
map("n", "<C-l>", ":wincmd l", { desc = "Navigate window right" })
