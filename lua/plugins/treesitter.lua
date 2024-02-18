return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "windwp/nvim-ts-autotag",
        "nvim-treesitter/nvim-treesitter-textobjects"
    },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "javascript", "html", "css",
                "python", "markdown", "markdown_inline",
            },
            sync_install = false,
            highlight = { enable = true, disable = { "css" }, },
            indent = { enable = true },
            autotag = {
                enable = true,
                filetypes = {
                    "html", "javascript", "typescript", "javascriptreact",
                    "typescriptreact", "svelte", "vue", "tsx",
                    "jsx", "rescript",
                    "css", "lua", "xml", "php", "markdown",
                },
            },
            textobjects = {
                select = {
                    enable = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                        ["a?"] = "@conditional.outer",
                        ["i?"] = "@conditional.inner",
                    },
                }
            }
        })
    end
}
