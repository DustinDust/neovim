-- format
return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        vim.api.nvim_create_user_command("Fmt", function(args)
            local range = nil
            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start = { args.line1, 0 },
                    ["end"] = { args.line2, end_line:len() },
                }
            end
            require("conform").format({ async = true, lsp_format = "fallback", range = range })
        end, { range = true })

        vim.api.nvim_create_user_command("FormatDisable", function()
            vim.b.enable_autoformat = false
            vim.g.enable_autoformat = false
        end, {
            desc = "Disable autoformat-on-save",
        })

        vim.api.nvim_create_user_command("FormatEnable", function(args)
            if args.bang then
                vim.b.enable_autoformat = true
            else
                vim.g.enable_autoformat = true
            end
        end, {
            desc = "Re-enable autoformat-on-save",
            bang = true,
        })

        require("conform").setup {
            log_level = vim.log.levels.DEBUG,
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                ruby = { "rubocop" }
            },
            format_on_save = function(bufnr)
                -- Disable with a global or buffer-local variable
                if vim.g.enable_autoformat or vim.b[bufnr].enable_autoformat then
                    return { timeout_ms = 1000, lsp_format = "fallback" }
                end
            end,
            formatters = {
                rubocop = {
                    command = "rbenv exec rubocop",
                    args = { "--stdin", "$FILENAME", "--format", "json" },
                    stdin = true,
                    to_stdin = true,
                    to_tempfile = true,
                    from_tempfile = true,
                    from_stderr = true,
                    to_stdout = false,
                    from_json = function(output)
                        local result = vim.json.decode(output)
                        return result[1].offenses
                    end,
                },
                prettier = {
                    command = "prettier",
                    args = { "--stdin-filepath", "$FILENAME" },
                    stdin = true,
                },
            },

            default_format_opts = {
                lsp_format = "fallback",
            },
            -- Conform will notify you when a formatter errors
            notify_on_error = true,
            -- Conform will notify you when no formatters are available for the buffer
            notify_no_formatters = true,
        }
    end
}
