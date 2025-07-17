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
			format_on_save = function()
				if vim.g.disable_autoformat then
					return
				end
				return {
					timeout_ms = 500,
					lsp_format = "fallback",
				}
			end,
		})

		-- auto format
		-- vim.api.nvim_create_autocmd("BufWritePre", {
		-- 	pattern = "*",
		-- 	callback = function(args)
		-- 		if vim.g.disable_autoformat then
		-- 			return
		-- 		end
		-- 		require("conform").format({ bufnr = args.buf })
		-- 	end,
		-- })

		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format({ async = true })
		end, { desc = "Format file with conform" })
	end,
}
