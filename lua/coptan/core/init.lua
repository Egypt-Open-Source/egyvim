require('coptan.core.options')
require('coptan.core.keymaps')

local augroup = vim.api.nvim_create_augroup
local CoptanGroup = augroup('Coptan', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = CoptanGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
