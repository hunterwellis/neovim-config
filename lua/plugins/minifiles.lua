return {
  'echasnovski/mini.files',
  version = '*',
  config = function()
    require("mini.files").setup({
      mappings = {
        close       = '<C-n>',
        go_in       = 'l',
        go_in_plus  = 'L',
        go_out      = 'h',
        go_out_plus = 'H',
        mark_goto   = "'",
        mark_set    = 'm',
        reset       = '<BS>',
        reveal_cwd  = '@',
        show_help   = '?',
        synchronize = '=',
        trim_left   = '<',
        trim_right  = '>',
      },
    })
    vim.keymap.set("n", "<C-n>", ":lua MiniFiles.open()<Cr>")
  end,
}
