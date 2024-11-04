return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
	{
		"hrsh7th/nvim-cmp",
    dependencies = {
		  "williamboman/mason-lspconfig.nvim",
		  "neovim/nvim-lspconfig",
    },
		config = function()
			local complete = require("cmp")

			complete.setup({
				sources = complete.config.sources({
					{ name = "gopls" },
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "pyright" },
				}),
				window = {
					completion = complete.config.window.bordered(),
					documentation = complete.config.window.bordered(),
				},
				mapping = complete.mapping.preset.insert({
					["<C-b>"] = complete.mapping.scroll_docs(-4),
					["<C-f>"] = complete.mapping.scroll_docs(4),
					["<C-Space>"] = complete.mapping.complete(),
					["<C-e>"] = complete.mapping.abort(),
					["<CR>"] = complete.mapping.confirm({ select = true }),
				}),
			})
		end,
	},
}
