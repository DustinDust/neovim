require('shuy.remap')
require('shuy.lazy_init')
require('shuy.set')

local autogroup = vim.api.nvim_create_augroup
local ShuyGroup = autogroup("Shuy", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = ShuyGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>lR", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set(
            { 'n', 'x' },
            '<leader>lf',
            function()
                -- vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
                vim.cmd("Fmt")
            end, opts
        )
    end
})
