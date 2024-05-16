function ColorMyPencils(color)
    -- default colorscheme "rose-pine"
    color = color or "rose-pine"


    -- rose-pine config
    require('rose-pine').setup({
        disable_background = false,
        styles = {
            italic = false,
        },
    })

    -- gruvbox-material config
    vim.g.gruvbox_material_foreground = "mix"

    -- vscode config
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
        -- Alternatively set style in setup
        -- style = 'light'

        -- Enable transparent background
        transparent = false,

        -- Enable italic comment
        italic_comments = true,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override colors (see ./lua/vscode/colors.lua)
        -- color_overrides = {
        --   vscLineNumber = '#FFFFFF',
        -- },

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
            -- this supports the same val table as vim.api.nvim_set_hl
            -- use colors from this colorscheme by requiring vscode.colors!
            Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        }
    })

    vim.cmd.colorscheme(color)

    -- other config
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
        end
    },
    {
        "sainnhe/gruvbox-material",
        config = function()
        end
    },
    {
        'Mofiqul/vscode.nvim',
        config = function()
            ColorMyPencils("vscode")
        end
    }
}
