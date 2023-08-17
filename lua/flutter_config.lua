local setup = require("flutter-tools").setup {
    debugger = {
      enabled = true,
      run_via_dap = true,
      register_configurations = function(_)
        local dap = require("dap")
        dap.adapters.dart = {
            type = "executable",
            command = "flutter",
            args = {"debug_adapter"},
        }
        -- dap.set_log_level("TRACE")
        dap.configurations.dart = {}
        require("dap.ext.vscode").load_launchjs()
      end,
    },
    settings = {
      enableSnippets = true,
    },
    lsp = {
      on_attach = require("lvim.lsp").common_on_attach,
    },
    dev_log = {
        enabled = false,
      -- open_cmd = "tabedit", -- command to use to open the log buffer
    },
}
