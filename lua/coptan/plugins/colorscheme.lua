return {
    {
        "rose-pine/neovim",
        config = function()
            require("rose-pine").setup({
                disable_background = true
            })
            vim.cmd.colorscheme "rose-pine"
        end,
    },
    { "folke/tokyonight.nvim" },
    { "catppuccin/nvim" }
}
