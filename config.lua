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
    -- { "NTBBloodbath/rest.nvim" },
    { "teto/rest.nvim" },
    { "christianchiarulli/nvcode-color-schemes.vim" },
    { "lukas-reineke/indent-blankline.nvim" },
    { "ray-x/lsp_signature.nvim" },
    { "APZelos/blamer.nvim" },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
    },
    {
        "simrat39/rust-tools.nvim",
        config = function()
            local status_ok, rust_tools = pcall(require, "rust-tools")
            if not status_ok then
                return
            end

            local opts = {
                tools = {
                    executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
                    reload_workspace_from_cargo_toml = true,
                    inlay_hints = {
                        auto = true,
                        only_current_line = false,
                        show_parameter_hints = true,
                        parameter_hints_prefix = "<-",
                        other_hints_prefix = "=>",
                        max_len_align = false,
                        max_len_align_padding = 1,
                        right_align = false,
                        right_align_padding = 7,
                        highlight = "Comment",
                    },
                    hover_actions = {
                        border = {
                            { "╭", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╮", "FloatBorder" },
                            { "│", "FloatBorder" },
                            { "╯", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╰", "FloatBorder" },
                            { "│", "FloatBorder" },
                        },
                        auto_focus = true,
                    },
                },
                server = {
                    on_attach = require("lvim.lsp").common_on_attach,
                    on_init = require("lvim.lsp").common_on_init,
                    settings = {
                        ["rust-analyzer"] = {
                            checkOnSave = {
                                command = "clippy"
                            }
                        }
                    },
                },
            }
            rust_tools.setup(opts)
        end,
        ft = { "rust", "rs" },
    },
}
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

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

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = false,
}
require("lsp_signature").setup({})
-- lvim.builtin.treesitter.matchup
--
--

local MY_FQBN = "arduino:avr:nano"
local lspconfig = require 'lspconfig'
lspconfig.arduino_language_server.setup {
  cmd = {
    "arduino-language-server",
        "-cli-config", "/home/andrei/.arduino15/arduino-cli.yaml",
        "-fqbn",
        MY_FQBN
  },
}
