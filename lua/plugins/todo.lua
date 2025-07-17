return {
  "vimichael/floatingtodo.nvim",
  config = function()
    require("floatingtodo").setup({
      target_file = "~/Documents/todo.md",
      width = 0.9,
      position = "center",
    })
    vim.keymap.set("n", "<leader>td", ":Td<CR>", { silent = true })
  end,
}
