require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "c" }, -- or "all"
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, -- set true if you want both
    custom_captures = {
        ["comment"] = "Comment",
    },
  },
}
