local pid = vim.fn.getpid()
local omnisharp_bin = "/home/andrei/.local/share/omnisharp-linux-x64-net6.0/OmniSharp"

local opts = {
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').handler,
    },
    cmd = { omnisharp_bin, '--languageserver' , '--hostPID', tostring(pid) },
    enable_editorconfig_support = true,
    enable_ms_build_load_projects_on_demand = false,
    enable_roslyn_analyzers = false,
    organize_imports_on_format = false,
    enable_import_completion = false,
    sdk_include_prereleases = true,
    analyze_open_documents_only = false,
}

require("lvim.lsp.manager").setup("omnisharp", opts)
