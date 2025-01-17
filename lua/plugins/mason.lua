return {
    {
        "mason.nvim",
        opts = {
            ui = {
                check_outdated_packages_on_open = true,
                border = "single",
                width = 0.8,
                height = 0.8,

                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    { "williamboman/mason-lspconfig.nvim", config = function() end },
}
