return {
	'nvim-mini/mini.icons',
	version = '*',
  config = function()
    require("mini.icons").setup({
      style = 'glyph',
      -- style = 'ascii',
    })
  end,

  use_file_extension = function(ext, file) return true end,
}
