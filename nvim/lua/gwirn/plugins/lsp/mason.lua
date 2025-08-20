return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            autoenabe = true,
            -- list of servers for mason to install
            ensure_installed = {
                "zls",
                "gopls",
                "rust_analyzer",
                "jedi_language_server",
                "lua_ls",
                "ruff",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "stylua", -- lua formatter
                "zls",
                "gopls",
                "rust_analyzer",
                "lua_ls",
                "ruff",
                "shellcheck",
                "shfmt"
            },
        })
    end,
}
