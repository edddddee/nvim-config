-- Set language to english
vim.cmd("language en_US")

-- Cursor always block
vim.opt.guicursor = "n-v-c-sm:block"

-- Relative line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable cursor line
vim.opt.cursorline = true

-- Indentation is two spaces 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Enable word wrapping
vim.opt.wrap = true

-- Disable swapfiles and backups, enable undofiles
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Enable incremental search
vim.opt.incsearch = true

-- Enable true colors
vim.opt.termguicolors = true

-- Keep some margin above/below cursor when scrolling
vim.opt.scrolloff = 3

-- Always display signcolumn
vim.opt.signcolumn = "yes"

-- Faster update time (default=400 [ms])
vim.opt.updatetime = 50

-- Highlight column 80
vim.opt.colorcolumn = "80"
