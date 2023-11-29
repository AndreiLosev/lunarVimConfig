-- Additional Plugins
lvim.plugins = {
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },
    { "p00f/nvim-ts-rainbow" },
    { "nvim-telescope/telescope-live-grep-args.nvim" },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    { "teto/rest.nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
    {"ray-x/lsp_signature.nvim"},
    { "APZelos/blamer.nvim" },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
    },
    { "Hoffs/omnisharp-extended-lsp.nvim" },
    {
        "simrat39/rust-tools.nvim",
        config = function()
            require("rust_config");
        end,
        ft = { "rust", "rs" },
    },
    {
        -- Install Flutter support with snippets
        "akinsho/flutter-tools.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "stevearc/dressing.nvim",
        },
        config = function()
          require("flutter_config")
        end,
        ft = "dart",
      }
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, {
    "rust_analyzer",
    "omnisharp",
    -- "intelephense",
    "psalm",
})

require("lualine1")
require("settings")
require("my_keymap")
require("dap_settings")
require("dap1")
require("dapui1")
require("rest_nvim1")
require("null_ls_formatters")
require("telescop1")
require("php_class_name")
require("nvim-web-devicons1")
require("lsp_signature").setup({
    bind = true,
    floating_window = true,
    max_height = 2,
    max_width = 120,
})
-- require("indent_blankline").setup {
--     show_current_context = true,
--     show_current_context_start = false,
-- }
-- require("lsp_signature").setup({})

-- local MY_FQBN = "arduino:avr:nano"
-- local lspconfig = require 'lspconfig'
-- lspconfig.arduino_language_server.setup {
--   cmd = {
--     "arduino-language-server",
--         "-cli-config", "/home/andrei/.arduino15/arduino-cli.yaml",
--         "-fqbn",
--         MY_FQBN
--   },
-- }

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "sqlls"
end, lvim.lsp.automatic_configuration.skipped_servers)

-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "psalm"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "phpactor"
end, lvim.lsp.automatic_configuration.skipped_servers)
