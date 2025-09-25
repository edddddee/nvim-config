return require("packer").startup(function(use)
    -- packer manages itself
    use "wbthomason/packer.nvim"

    -- undotree
    use 'mbbill/undotree'

    -- treesitter
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    -- colorschemes
    use "navarasu/onedark.nvim"
    use "olimorris/onedarkpro.nvim"
    use "folke/tokyonight.nvim"
    use "n1ghtmare/noirblaze-vim"
    use "edddddee/minimal.nvim"

    -- telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.8",
        requires = { 
            {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope-fzf-native.nvim", 
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release \z
            && cmake --build build --config Release"},
        }
    }

    -- lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }

    -- highlight colors
    use("brenoprata10/nvim-highlight-colors")

    -- conform
    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })
end)
