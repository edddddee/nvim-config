if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
    vim.g.undotree_DiffCommand = "FC"
else
    vim.g.undotree_DiffCommand = "diff"
end

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
