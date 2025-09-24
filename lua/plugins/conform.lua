return {
	"stevearc/conform.nvim",
	config = function()
		vim.g.disable_autoformat = false
		require("conform").setup({
			formatters_by_ft = {
				purescript = { "purstidy", stop_after_first = true },
				lua = { "stylua", stop_after_first = true },
				ocaml = { "ocamlformat", stop_after_first = true },
				python = { "black" },
				rust = { "rustfmt" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				yaml = { "yamlfmt" },
				html = { "prettier" },
				json = { "prettier" },
				markdown = { "prettier" },
				gleam = { "gleam" },
				asm = { "asmfmt" },
				css = { "prettier", stop_after_first = true },
				latex = { "llf", stop_after_first = true },
			},
		})

		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format({ async = true })
		end, { desc = "Format file" })
	end,
}
