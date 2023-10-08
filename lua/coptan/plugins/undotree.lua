return {
    "mbbill/undotree",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndoTreeToggle)
    end
}
