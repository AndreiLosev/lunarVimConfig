lvim.builtin.telescope.on_config_done = function (tele)
    tele.load_extension("live_grep_args")
    local ok, actions = pcall(require, "telescope.actions")
    if not ok then
        return
    end

    local opts = {
        defaults = {
            file_ignore_patterns = { "%.png", "%.jpg", "%.jpeg", "%.map" },
        },
        pickers = {
            find_files = {
                -- previewer = false,
                only_sort_text = true,
                layout_strategy = 'horizontal',
                layout_config = { width = 0.95, height = 0.95 }
            },
            live_grep = {
                -- only_sort_text = true,
                -- layout_strategy = 'horizontal',
                layout_config = { width = 0.95 },
                theme = "dropdown",
            },
            buffers = {
                layout_strategy = 'horizontal',
                layout_config = { width = 0.95 },
                initial_mode = "normal",
                mappings = {
                    i = {
                      ["<C-d>"] = actions.delete_buffer,
                    },
                    n = {
                      ["dd"] = actions.delete_buffer,
                    },
                  },
                },
            planets = {
              show_pluto = true,
              show_moon = true,
            },
            git_files = {
                -- previewer = false,
                only_sort_text = true,
                layout_strategy = 'horizontal',
                layout_config = { width = 0.95 }
            },
            lsp_references = {
              theme = "dropdown",
              initial_mode = "normal",
            },
            lsp_definitions = {
              theme = "dropdown",
              initial_mode = "normal",
            },
            lsp_declarations = {
              theme = "dropdown",
              initial_mode = "normal",
            },
            lsp_implementations = {
              theme = "dropdown",
              initial_mode = "normal",
            },
        },
        extensions = {
            live_grep_args = {
              auto_quoting = true, -- enable/disable auto-quoting
              theme = "dropdown", -- use dropdown theme
              theme = { }, -- use own theme spec
              layout_config = { mirror=true }, -- mirror preview pane
    }
  }
    }
    require("telescope").setup(opts)
end

