local components = require("lvim.core.lualine.components")
components.filename.path = 1
lvim.builtin.lualine.sections.lualine_c = { "location", "progress" }


