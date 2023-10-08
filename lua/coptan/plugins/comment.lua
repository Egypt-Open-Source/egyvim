return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        -- import comment plugin safely
        local comment = require("Comment")

        -- enable comment
        comment.setup({})
    end,
}
