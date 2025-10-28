return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_browser = "brave"
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
      latex = { enabled = false },
      completions = { blink = { enabled = true } },
      -- anti_conceal = { enabled = false },
    },
    ft = { "markdown", "Avante" },
    config = function()
      vim.keymap.set("n", "<leader>md", require("render-markdown").toggle, { desc = "Toggle markdown render" } )
    end,
  },
}
