-- theme dracula
vim.cmd("colorscheme dracula")
local cmd = vim.cmd
cmd("hi Normal guibg=NONE ctermbg=NONE")

local set = vim.opt
-- indent blankline
set.list = true
set.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}

require('lualine').setup{
  options = {
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  }
}
-- notify plugin
vim.notify=require("notify")
-- comment plugin
require('Comment').setup()

-- null-ls plugin start
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local sources = {
 formatting.prettier
}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
sources = sources,
on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format({ bufnr = bufnr })
                   -- vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
    
})
-- null-ls plugin end

