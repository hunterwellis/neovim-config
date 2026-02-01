return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_browser = "brave-browser"
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
      latex = { enabled = false },
      completions = { blink = { enabled = true } },
    },
    ft = { "markdown", "Avante" },
    config = function()
      vim.keymap.set("n", "<leader>md", require("render-markdown").toggle, { desc = "Toggle markdown render" } )
    end,
  },
  {
  "sheerun/vim-polyglot",
    lazy = false,
    init = function()
      vim.g.polyglot_disabled = "autoindent"
    end
  },
  -- vimtex
  {
  "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_quickfix_ignore_filters = {'Underfull', 'Overfull', 'LaTeX Font Warning', 'Missing character'}
    end
  },
}
