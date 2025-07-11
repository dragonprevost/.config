return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      debug = true,   -- turn on debugging
      autostart = true,
      sources = {
        -- null_ls.builtins.diagnostics.mypy,
        -- null_ls.builtins.diagnostics.pyright,
        -- null_ls.builtins.diagnostics.ruff,
        -- null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.eslint_d,
        -- null_ls.builtins.diagnostics.rubocop,
        -- null_ls.builtins.formatting.rubocop,
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.gofmt,
        -- null_ls.builtins.formatting.prettier,
      },
    })

    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
  end,
}
