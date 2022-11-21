lvim.builtin.telescope.on_config_done = function ()
    local ok, actions = pcall(require, "telescope.actions")
    if not ok then
        return
    end

    local opts = {
        pickers = {
            find_files = {
                theme = "dropdown",
                hidden = true,
                previewer = false,
            },
            live_grep = {
                only_sort_text = true,
                layout_strategy = 'horizontal',
                layout_config = { width = 0.90 }
            },
            buffers = {
                layout_strategy = 'horizontal',
                layout_config = { width = 0.90 },
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
              theme = "dropdown",
              hidden = true,
              previewer = false,
              show_untracked = true,
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
          }
    }
    require("telescope").setup(opts)
end

