-- after/plugin/vimtex.lua

vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_view_method = 'sumatrapdf'

-- Windows 11
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.vimtex_view_method = 'sumatrapdf'
  vim.g.vimtex_view_sumatrapdf_options = '-reuse-instance -forward-search @tex @pdf'
else
  -- Linux
  vim.g.vimtex_view_method = 'zathura'
  vim.g.vimtex_view_zathura_options = '-x "nvim --headless +%{line} %{input}"'
end

-- Auto-start compiler on file save
vim.g.vimtex_compiler_latexmk = {
  build_dir = '',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
  options = {
    '-pdf',
    '-interaction=nonstopmode',
    '-synctex=1',
  },
}
