return {
    "hoob3rt/lualine.nvim",
    config = function ()
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count
        require("lualine").setup {
            options = {
                component_separators = '|',
                section_separators = '',
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"branch"},
                lualine_c = {"filename"},
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                },
                lualine_y = {"progress"},
                lualine_z = {"location"}
            },
        }
    end
}
