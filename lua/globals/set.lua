-- Set language to english
vim.cmd("language en_US")

-- Cursor always block
vim.opt.guicursor = "n-v-c-sm:block"

-- Relative line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Always display sign in number column
vim.opt.signcolumn = "number"

-- Enable cursor line
vim.opt.cursorline = true

-- Indentation is two spaces 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
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

-- Faster update time (default=400 [ms])
vim.opt.updatetime = 250

-- Highlight column #
vim.opt.colorcolumn = "101"

-- Configure default shell (on windows)
if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  vim.opt.shell = "pwsh.exe"
  -- Adjust how commands are passed to PowerShell
  vim.o.shellxquote = ""
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "
  vim.o.shellquote = ""
  -- Redirect output to a UTF-8 encoded file
  vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
  vim.o.shellredir = "| Out-File -Encoding UTF8 %s"
end
