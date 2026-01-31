return {
  "thgrass/tail.nvim",
  config = function()
    vim.keymap.set("n", "<leader>tl", ":TailToggle<CR>",
      { desc = "Tail toggle" })
  end,
}
