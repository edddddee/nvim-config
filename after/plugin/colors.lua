-- Transparent background color (use terminal settings)
--vim.cmd("hi Normal guibg=none")

-- Black background color
--vim.cmd("hi Normal guibg=#000000")

-- Set colorscheme
vim.cmd("colorscheme slate")
vim.api.nvim_set_hl(0, "Normal", { bg = "#1f2936", fg = "#dbdbdb" }) 
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#33455c" }) 
vim.api.nvim_set_hl(0, "Comment", { fg = "#85ffc4" }) 
vim.api.nvim_set_hl(0, "Todo", { fg = "#000000", bg = "#cafae3", bold = true }) 
vim.api.nvim_set_hl(0, "Visual", { fg = "#FFFFFF", bg = "#222222" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF"})
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#31f5c1", bg = "#33455c" })

