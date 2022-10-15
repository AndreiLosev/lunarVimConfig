local dap = require("dap")

dap.configurations.php = {
    -- {
    --     name = "Listen for Xdebug from lua",
    --     type = "php",
    --     request = "launch",
    --     port = 9003
    -- },
    -- -- {
    --     name = "hc-app",
    --     type = "php",
    --     request = "launch",
    --     port = 9000,
    --     pathMappings = {
    --         ['/var/www'] = "${workspaceFolder}",
    --     },
    -- },
    -- {
    --     name = "hc-ticketing-back",
    --     type = "php",
    --     request = "launch",
    --     port = 9003,
    --     pathMappings = {
    --         ["/src"] = "${workspaceFolder}/",
    --     }
    -- },
    -- {
    --     name = "langshop-Saas",
    --     type = "php",
    --     request = "launch",
    --     port = 9000,
    --     pathMappings = {
    --         ["/var/www/html/v2"] = "${workspaceFolder}/www/v2/",
    --     }
    -- }
}

dap.configurations.rust = {
    {
        type = "lldb",
        request = "launch",
        name = "Debug executable 'web_soket'",
        -- cargo = {
        --     args = {
        --         "build",
        --         "--bin=web_soket",
        --         "--package=web_soket"
        --     },
        --     filter = {
        --         name = "web_soket",
        --         kind = "bin"
        --     },
        -- },
        program = "${workspaceFolder}/target/debug/web_soket",
        args = {},
        cwd = "${workspaceFolder}"
    }
}
