require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "%.png",
            "%.bmp",
            "%.wav",
            "%.obj",
        },
    },
    pickers = {
        find_files = {
            --no_ignore=true,
            --theme = ""
        },
        live_grep = {
            theme = "ivy",
        },
        help_tags = {
            theme = "ivy",
        },
    },
}

-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files,
{ desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep,
{ desc = 'Telescope live grep' })

vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers,
{ desc = 'Telescope buffers' })

vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags,
{desc = 'Telescope help tags'})

vim.keymap.set('n', '<leader>en',
function()
    require('telescope.builtin').find_files { cwd = vim.fn.stdpath("config") }
end, { desc = 'Telescope find in config directory' })
