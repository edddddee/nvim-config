return require("packer").startup(function(use)
  -- Packer manages itself
  use "wbthomason/packer.nvim"

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  --use("nvim-treesitter/nvim-treesitter-context")

  use "navarasu/onedark.nvim"
  --use "olimorris/onedarkpro.nvim"
  use "folke/tokyonight.nvim"

  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    requires = { 
      {"nvim-lua/plenary.nvim"},
      {"nvim-telescope/telescope-fzf-native.nvim", 
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release \z
      && cmake --build build --config Release"},
    }
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use("brenoprata10/nvim-highlight-colors")

  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
end)
