return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#2a2a2a" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#2a2a2a" })

    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {
          function()
            return vim.bo.filetype
          end,
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
