return {
  "antosha417/nvim-lsp-file-operations",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neo-tree/neo-tree.nvim",
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("lsp-file-operations").setup()
  end,
}
