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

GetPhpClassName = function ()
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

    local class_name = file_from_path
        :gsub(a_value, a_key)
        :gsub('/', '\\')
        :gsub('.php', '')
        :sub(2)

    vim.api.nvim_set_current_line(vim.api.nvim_get_current_line() .. class_name)
    -- print(class_name)
    -- return class_name
end
