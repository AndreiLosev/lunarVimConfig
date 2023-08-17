local dap = require("dap")


dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/home/andrei/.vscode/extensions/xdebug.php-debug-1.33.0/out/phpDebug.js' }
}

-- dap.adapters.dart = {
--     type = "executable",
--     command = "dart",
--     args = {"debug_adapter"},
-- }

dap.adapters.dart = function (cb, config)
    cb({
        type = "executable",
        command = config.command,
        args = {"debug_adapter"},

    })
end

dap.adapters.lldb = {
    type = 'server',
    host = '127.0.0.1',
    port = "13000", -- 💀 Use the port printed out or specified with `--port`
    executable = {
        command = "/home/andrei/.vscode/extensions/vadimcn.vscode-lldb-1.8.1/adapter/codelldb",
        args = { "--port", "13000" },
    }
}

dap.adapters.coreclr = function (cb, config)
    local port = config.port or 4711
    local host = config.host or "127.0.0.1"
    local executable  = config.executable or {
        command = '/home/andrei/.config/lvim/lua/dap_adapters/netcoredbg-linux-amd64/netcoredbg/netcoredbg',
        args = { "--interpreter=vscode", "--server" }
    }
    cb({
        type = 'server',
        host = host,
        port = port,
        executable = executable
    })
end
