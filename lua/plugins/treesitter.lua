return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local treesitter_configs = require("nvim-treesitter/configs")
      treesitter_configs.setup({
          ensure_installed = {
            "typst",
            "c",
            "cpp",
            "lua",
            "markdown",
            "markdown_inline",
            "query",
            "vim",
            "vimdoc",
          },
          auto_install = true,
          highlight = {
            enable = true,
          },
          indent = {
            enable = true,
          },
        })
    end,
  },
}
