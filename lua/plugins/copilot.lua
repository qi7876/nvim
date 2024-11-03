return {
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        opts = {
            suggestion = {
                enabled = true,
                auto_trigger = true,
            },
        },
    },

    { "zbirenbaum/copilot-cmp", enabled = false },

    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        cmd = "CopilotChat",
        opts = function()
            local user = vim.env.USER or "User"
            user = user:sub(1, 1):upper() .. user:sub(2)
            return {
                model = "o1-mini-2024-09-12",
                show_help = false,
                question_header = "  " .. user .. " ",
                answer_header = "  Copilot ",
                window = {
                    width = 0.4,
                },
                selection = function(source)
                    local select = require("CopilotChat.select")
                    return select.visual(source) or select.buffer(source)
                end,
            }
        end,
    },
}