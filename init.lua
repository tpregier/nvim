-- init.lua (put this at the very top, before loading plugins)
-- Detect OS and set shell accordingly (run BEFORE plugins are required)
local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

if is_windows then
  -- prefer pwsh (PowerShell 7) if available, fallback to Windows PowerShell, then cmd
  local shell_cmd = nil
  if vim.fn.executable("pwsh") == 1 or vim.fn.executable("pwsh.exe") == 1 then
    shell_cmd = "pwsh"
  elseif vim.fn.executable("powershell") == 1 or vim.fn.executable("powershell.exe") == 1 then
    shell_cmd = "powershell"
  else
    shell_cmd = "cmd.exe"
  end

  vim.o.shell = shell_cmd
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
else
  -- Linux / macOS: use user's $SHELL or a sensible default
  vim.o.shell = vim.env.SHELL or "/bin/bash"
end

-- now load LazyVim / plugins
require("config.lazy")
vim.cmd("colorscheme nightfox")
-- rest of your init.lua...
