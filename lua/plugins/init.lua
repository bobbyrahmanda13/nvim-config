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
null_ls.setup({
sources = sources
})
-- null-ls plugin end

