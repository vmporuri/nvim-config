return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { 'windwp/nvim-ts-autotag' },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query",
                "elixir", "heex", "javascript", "html", "python", "markdown",
                "markdown_inline" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = {
                enable = true,
                filetypes = {
                    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx',
                    'jsx', 'rescript',
                    'css', 'lua', 'xml', 'php', 'markdown'
                },
            },
        })
    end
}
