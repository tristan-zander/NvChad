local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "rustfmt",
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua"
      }
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    -- In order to modify the `lspconfig` configuration:
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rs", "rust", "toml" },
    config = function()
      require "custom.configs.rust-tools"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

        -- low level
        "c",
        "zig",
        "rust"
      },
    },
  },
  {
    "saecki/crates.nvim",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
    },
    ft = { "toml" },
    config = function()
      require "custom.configs.crates"
    end
  }
};

return plugins
