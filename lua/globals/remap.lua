local opts = { silent = true, noremap = true }

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

-- Move visual blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over visual without replacing default register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank to system clipboard easier
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete to void regiser
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Treat <C-c> as <Esc> in insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Keep cursor static when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keymap to either switch to an existing terminal or open a new terminal
-- in a right split
vim.keymap.set("n", "<Leader>t", function()
  local found_terminal = false
  -- Iterate over all windows to check if there is a terminal split
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
      -- Focus on the terminal split if found
      vim.api.nvim_set_current_win(win)
      vim.cmd("startinsert")  -- Enter insert mode immediately
      found_terminal = true
      break
    end
  end
  -- If no terminal is found, open a new terminal in a right split and go into insert mode
  if not found_terminal then
    vim.cmd("rightbelow vsplit | terminal") -- Open terminal in a right split
    vim.cmd("vertical resize " .. math.floor(vim.o.columns * 0.42))
    vim.cmd("startinsert")  -- Enter insert mode immediately
  end
end, { noremap = true, silent = true })

-- Allow window commands to work in terminal mode as well
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
vim.keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h", opts)
vim.keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j", opts)
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k", opts)
vim.keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l", opts)
vim.keymap.set("t", "<C-w>c", "<C-\\><C-n><C-w>c", opts)

-- :make keymaps
vim.keymap.set("n", "<leader>gb", ":ls<CR>:b ")
