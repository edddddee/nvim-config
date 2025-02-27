-- Set leader key
vim.g.mapleader = " "

-- Remove search highlights on Ctrl+c or ESC
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-c>", ":nohlsearch<CR>")

-- Easier indentation behaviour
vim.keymap.set("n", "<", "<<", { silent = true, desc = "Outdent" })
vim.keymap.set("n", ">", ">>", { silent = true, desc = "Indent" })
vim.keymap.set("v", "<", "<gv", { silent = true, desc = "Indent" })
vim.keymap.set("v", ">", ">gv", { silent = true, desc = "Outdent" })

-- Escape insert mode with 'jk'
vim.keymap.set("i", "jh", "<Esc>", { noremap = true})
