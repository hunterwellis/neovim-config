return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function()
    require("ibl").setup({
      enabled = false,
      indent = {
        char = '|',
      },
      scope = {
        enabled = false
      }
    })
  end,
  vim.keymap.set("n", "<leader>i", ":IBLToggle<CR>",
    { desc = "Line indent" })
}
