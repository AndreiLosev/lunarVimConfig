vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.encoding = 'utf-8'
vim.opt.colorcolumn = "90"
vim.opt.relativenumber = true
vim.opt.fileencoding = 'utf-8'
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.dap.active = true
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.dap.active = true
lvim.log.level = "warn"
lvim.format_on_save = false;
lvim.colorscheme = 'tokyonight-night'
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
vim.opt.timeoutlen = 500
lvim.builtin.which_key.setup.plugins.marks = true;
lvim.lsp.automatic_servers_installation = false;
