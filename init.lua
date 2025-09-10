-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- setup must be called before loading
vim.cmd("colorscheme nightfox")

-- PDF versions based on operating system


-- Adding a reference line at 80 characters
vim.opt.colorcolumn = "80" -- or any column number you prefer

require("oil").setup()
