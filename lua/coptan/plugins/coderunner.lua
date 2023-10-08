return {
    "Coptan99/coderunner.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
        local coderunner = require("coderunner")
        local keymap = vim.keymap

        keymap.set("n", "<leader>qq", coderunner.run)
    end,
}
