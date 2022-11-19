lvim.builtin.dap.ui.config.layouts = {
    {
        elements = {
          { id = "scopes", size = 0.65 },
          -- { id = "breakpoints", size = 0.17 },
          -- { id = "stacks", size = 0.25 },
          { id = "watches", size = 0.35 },
        },
        size = 0.33,
        position = "right",
    },
    {
        elements = {
          -- { id = "repl", size = 0.45 },
          -- { id = "console", size = 0.55 },
        },
            size = 0.27,
            position = "bottom",
    },
}

-- dapui.setup({
--     icons = { expanded = "▾", collapsed = "▸" },
--     mappings = {
--         expand = { "<CR>", "<2-LeftMouse>" },
--         open = "o",
--         remove = "d",
--         edit = "e",
--         repl = "r",
--         toggle = "t",
--     },
--     expand_lines = 1,
--     layouts = {
--         {
--             elements = {
--                 { id = "scopes", size = 0.75 },
--                 { id = "watches", size = 0.25 }
--             },
--             size = 40,
--             position = "left",
--         },
--     },
--     floating = {
--         max_height = nil, -- These can be integers or a float between 0 and 1.
--         max_width = nil, -- Floats will be treated as percentage of your screen.
--         border = "single", -- Border style. Can be "single", "double" or "rounded"
--         mappings = {
--             close = { "q", "<Esc>" },
--         },
--     },
--     windows = { indent = 1 },
--     render = {
--         max_type_length = nil, -- Can be integer or nil.
--     }
-- })
-- -- dap.listeners.after.event_initialized["dapui_config"] = function()
-- --     dapui.open()
-- -- end


