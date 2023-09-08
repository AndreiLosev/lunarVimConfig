local scandir = function (directory)
    local pfile = io.popen('ls -a "'..directory..'"')
    if pfile == nil then
        return ""
    end
    for filename in pfile:lines() do
        if 'composer.json' == filename then
            return directory .. '/' .. filename
        end
    end
    pfile:close()
end

local read_all = function (file)
    local f = assert(io.open(file, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

local inser_text = function (text)
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. text .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end

local get_classname = function (full_name)
    local revers = full_name:reverse()
    local pos = revers:find("\\")
    local class_name = revers:sub(0, pos - 1);
    return class_name:reverse()
end

local get_namespace = function (full_name)
    local revers = full_name:reverse()
    local pos = revers:find("\\")
    local namespace = revers:sub(pos + 1);
    return namespace:reverse()
end



local get_php_full_class_name = function ()
    local cwd =  vim.fn.getcwd()
    local file = vim.api.nvim_buf_get_name(0)
    local cwd_len = cwd:len()
    local file_from_path = file:sub(cwd_len + 1)
    local composer_json_path = scandir(cwd)
    if composer_json_path == nil then
        return 'composer.json not found 404'
    end
    local composer_json_as_string = read_all(composer_json_path)
    local composer_object = vim.json.decode(composer_json_as_string)
    local autoload = composer_object['autoload']
    local psr4 = autoload['psr-4']
    local a_key = ''
    local a_value = ''

    for key, value in pairs(psr4) do
        a_key = key
        a_value = value
    end

    local full_name = file_from_path
        :gsub(a_value, a_key)
        :gsub('/', '\\')
        :gsub('.php', '')
        :sub(2)

    return full_name
end

GetPhpClassName = function ()
    local full_name = get_php_full_class_name();
    local class_name = get_classname(full_name);
    inser_text(" " .. class_name)
end

GetPhpNameSpace = function ()
    local full_name = get_php_full_class_name();
    local namespace = 'namespace ' .. get_namespace(full_name) .. ';';
    inser_text(namespace)
end

SetPhpFileStart = function ()
    local full_name = get_php_full_class_name()
    local class_name = get_classname(full_name)
    local namespace = get_namespace(full_name)

    local text = {
        "<?php",
        "",
        'namespace ' .. namespace .. ';',
        "",
        'class ' .. class_name,
        '{',
        "    public function __construct()",
        "    {",
        "    }",
        '}',
    }

    vim.api.nvim_buf_set_lines(0, 0, 6, false, text)
end
