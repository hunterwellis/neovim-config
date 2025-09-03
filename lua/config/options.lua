local set = vim.opt

set.backup = false
set.clipboard = "unnamedplus"
set.cmdheight = 1
set.completeopt = { "menuone", "noselect" }
set.conceallevel = 0
set.fileencoding = "utf-8"
set.hlsearch = true
set.ignorecase = true
set.mouse = "a"
set.pumheight = 5
set.showmode = false
set.smartcase = true
set.smartindent = true
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.termguicolors = true
set.timeoutlen = 300
set.undofile = true
set.updatetime = 300
set.writebackup = false
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.cursorline = true
set.number = true
set.relativenumber = true
set.numberwidth = 2
set.signcolumn = "yes"
set.wrap = true
set.linebreak = true
set.scrolloff = 8
set.sidescrolloff = 8
set.guifont = "monospace:h17"
set.whichwrap = "bs<>[]hl"

vim.cmd("colorscheme lunaperche")
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- separate vim plugins from neovim in case vim still in use

-- Diagnostics Config
vim.diagnostic.config({
	virtual_text = {
		prefix = "󰎍",
		spacing = 2,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

local signs = {
	Error = "✘",
	Warn = "",
	Hint = "",
	Info = "",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- typst filetype
vim.filetype.add {
  extension = {
    typ = "typst",
  },
}

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.typ",
  callback = function()
    vim.bo.filetype = "typst"
  end,
})
