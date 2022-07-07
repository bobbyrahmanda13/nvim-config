local set = vim.opt
local cmd = vim.cmd


cmd("set mouse=a")
cmd("set noshowmode")
set.guicursor="n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

cmd("set foldenable")
cmd("set foldmethod=indent")

set.expandtab=true
set.smarttab=true
set.shiftwidth=2
set.tabstop=2
set.softtabstop=2

set.signcolumn="yes"
set.hlsearch=true
set.incsearch=true
set.ignorecase=true
set.smartcase=true

set.splitbelow=true
set.splitright=true

set.fileencoding='utf-8'
set.termguicolors=true

set.relativenumber=false
set.cursorline=true
set.hidden=true
set.number=true
set.cmdheight=2

