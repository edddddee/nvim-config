require("conform").setup({
  formatters_by_ft = {
    rust = { "rustfmt" },
  },
  format_on_save = {
    timeout_ms = 250,
    lsp_format = "fallback",
  },
})
