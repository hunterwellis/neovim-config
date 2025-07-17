return{
  {
  "sheerun/vim-polyglot",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.polyglot_disabled = "autoindent"
    end
  },

  -- vimtex
  {
  "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_quickfix_ignore_filters = {'Underfull', 'Overfull', 'LaTeX Font Warning', 'Missing character'}
    end
  },

}
