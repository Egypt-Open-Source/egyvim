return {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local builtin = require("telescope.builtin")
        local keymap = vim.keymap

        keymap.set("n", "<leader>pf", builtin.find_files)
        keymap.set("n", "<leader>ps", builtin.grep_string)
        keymap.set("n", "<C-p>", builtin.git_files)
    end
}
