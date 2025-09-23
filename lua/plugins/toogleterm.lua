return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      direction = "float",
      close_on_exit = true,
      auto_scroll = true,
    })

    local Terminal = require("toggleterm.terminal").Terminal

    -- Floating terminal
    local float = Terminal:new({ direction = "float" })
    vim.keymap.set("n", "<leader>a", function()
      float:toggle()
    end, { desc = "Floating Terminal" })

    -- Horizontal terminal (optional)
    local horiz = Terminal:new({ direction = "horizontal" })
    vim.keymap.set("n", "<leader>h", function()
      horiz:toggle()
    end, { desc = "Horizontal Terminal" })

    -- Prevent <leader>a from closing terminal when typing inside it
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*",
      callback = function()
        vim.keymap.set("t", "<leader>a", "<Space>a", { buffer = true, noremap = true })
      end,
    })
  end,
}
