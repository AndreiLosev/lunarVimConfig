lvim.keys.normal_mode["<F5>"] = "<Cmd>:lua require('dap.ext.vscode').load_launchjs(nil, {coreclr = {'cs'}, lldb = {'rust'}}) require'dap'.continue()<CR>"
-- lvim.keys.normal_mode["<F5>"] = "<Cmd>:lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F9>"] = "<Cmd>:lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F10>"] = "<Cmd>:lua require'dap'.step_into()<CR>"
lvim.builtin.which_key.mappings["dw"] = {
    "<cmd>:lua require'dapui'.toggle()<CR>", "Debug Windows toggle"
}
lvim.builtin.which_key.mappings["dg"] = {
    "<cmd>:lua require('dapui').float_element('watches')<CR>", "Debug Watches window"
}
lvim.builtin.which_key.mappings["df"] = {
    "<cmd>:lua require('dapui').float_element('breakpoints')<CR>", "Debug Breakpoints window"
}
lvim.builtin.which_key.mappings["ds"] = {
    "<cmd>:lua require('dapui').float_element('scopes')<CR>", "Debug Scopes window"
}
lvim.builtin.which_key.mappings["dv"] = {
    "<cmd>:lua require('dapui').float_element('stacks')<CR>", "Debug Stacks window"
}
lvim.builtin.which_key.mappings["dr"] = {
    "<cmd>:lua require('dapui').float_element('repl')<CR>", "Debug Repl window"
}
lvim.builtin.which_key.mappings['dt'] = {
    "<cmd>:lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint"
}
lvim.builtin.which_key.mappings['dl'] = {
    "<cmd>:lua require'dap'.run_last()<CR>", "Run last"
}
lvim.builtin.which_key.mappings['dR'] = {
    "<cmd>:lua require'dap'.run_last()<CR>", "Restart"
}
lvim.builtin.which_key.mappings["de"] = {
    "<cmd>:lua require'dapui'.eval()<CR>", "Eval"
}

lvim.builtin.which_key.mappings["sa"] = {
    "<cmd>:lua require(\"telescope\").extensions.live_grep_args.live_grep_args()<CR>", "Text With rg args"
}
-- lvim.builtin.which_key.mappings["dd"] = {
--     "<cmd>:require('dap').terminate()", "DapTerminate"
-- }
lvim.builtin.which_key.mappings['gt'] = {
    "<cmd> :BlamerToggle <CR>", "Show git in line"
}
lvim.builtin.which_key.mappings["r"] = {
    name = "http client",
    s = { "<cmd>lua require('rest-nvim').run()<CR>", "Send request" },
}

lvim.builtin.which_key.mappings["m"] = {
    name = "MergeTool",
    c = { "<cmd> DiffviewClose <CR>", "DiffviewClose" },
    h = { "<cmd> DiffviewFileHistory % <CR>", "Current File History" },
    C = { ":vert diffsplit", "Сompare current file with ..." },
    o = { "<cmd>: DiffviewOpen <CR>", "Show modified files" },
    O = { ": DiffviewOpen", "compare with {{ commit }}" },
}

lvim.builtin.which_key.mappings["a"] = {
    name = "Php specific",
    s = { "<cmd>:lua SetPhpFileStart() <CR>", "Start php class" },
    n = { "<cmd>:lua GetPhpNameSpace() <CR>", "insert namesapace" },
    c = { "<cmd>:lua GetPhpClassName() <CR>", "inser class" },
}

lvim.builtin.which_key.mappings["j"] = {
    "<cmd> :%!jq  <CR>", "json formated"
}

