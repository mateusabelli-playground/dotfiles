local status, theme = pcall(require, "catppuccin")
if (not status) then return end

theme.setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = true, -- Force no italic
    no_bold = true,   -- Force no bold
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        -- nvimtree = true,
        telescope = true,
        -- notify = false,
        -- mini = false,
        native_lsp = {
            enabled = true,
            underlines = {
                errors = { "undercurl" },
                hints = {},
                warnings = { "undercurl" },
                information = {},
            },
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- GitHub theme
-- theme.setup({
--     theme_style = "dark",
--     sidebars = {"qf", "vista_kind", "terminal", "packer"},
--
--     comment_style = "NONE",
--     keyword_style = "NONE",
--     function_style = "NONE",
--     variable_style = "NONE",
--
--     -- transparent = true,
--
--     overrides = function(c)
--         return {
--             Statusline = { bg = c.bg, fg = c.fg_light },
--         }
--     end,
--     dev = true,
-- })
