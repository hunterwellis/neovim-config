return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      char = {
        highlight = {
          backdrop = false,
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>ff", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<C-l>", mode = { "n", "x", "o", "c" }, function()
        local ok, flash = pcall(require, "flash")
        if ok and flash and flash.clear then
          flash.clear()
        else
          local ns = vim.api.nvim_get_namespaces()["flash"]
          if ns then
            pcall(vim.api.nvim_buf_clear_namespace, 0, ns, 0, -1)
          end
        end

        -- normal <C-l> behavior
        vim.cmd("nohlsearch")
        vim.cmd("redraw")
      end,
      desc = "Clear Flash highlights and redraw",
    },
  },
}
