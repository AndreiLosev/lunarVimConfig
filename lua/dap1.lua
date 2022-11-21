local dap = require("dap")


dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/home/andrei/.config/lvim/lua/dap_adapters/vscode-php-debug/out/phpDebug.js' }
}

dap.adapters.lldb = {
    type = 'server',
    host = '127.0.0.1',
    port = "13000", -- 💀 Use the port printed out or specified with `--port`
    executable = {
        command = "/home/andrei/.config/lvim/lua/dap_adapters/codelldb/extension/adapter/codelldb",
        args = { "--port", "13000" },
    }
}


