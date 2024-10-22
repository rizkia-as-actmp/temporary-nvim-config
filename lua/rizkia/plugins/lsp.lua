return {
  "neovim/nvim-lspconfig",
  opts = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")

    -- lspconfig.lua_ls.setup({
    --   capabilities = capabilities,
    -- })
    lspconfig.dartls.setup({
      capabilities = capabilities,
      cmd = { "dart", "language-server", "--protocol=lsp" },
    })
    -- lspconfig.yamlls.setup({
    --   capabilities = capabilities,
    -- })

    -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    -- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
