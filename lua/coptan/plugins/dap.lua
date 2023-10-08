return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        'theHamsta/nvim-dap-virtual-text',
        "mfussenegger/nvim-dap-python"
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
        require('dapui').setup()
        require('nvim-dap-virtual-text').setup()
        vim.fn.sign_define('DapBreakpoint', { text='🔴', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })

        -- Debugger
        vim.keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<cr>", {noremap=true})
        vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})
        vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", {noremap=true})

        local dap = require('dap')
        dap.configurations.python = {
            {
                type = 'python';
                request = 'launch';
                name = "Launch file";
                program = "${file}";
                pythonPath = function()
                    return '/usr/bin/python'
                end;
            },
        }

        -- require('dap-python').setup()
        require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
    end
}
