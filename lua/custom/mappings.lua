local M = {}

M.lsp = {
  n = {
    ["<leader>lc"] = { function()
      vim.lsp.buf.code_action()
    end, "LSP - See suggested code actions" }
  }
}

return M
