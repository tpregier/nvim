return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    signs = true,
    -- optionally configure keywords etc
    keywords = {
      TODO = { icon = " ", color = "info" },
      FIX = { icon = " ", color = "error" },
      HACK = { icon = " ", color = "warning" },
      BUG = { icon = " ", color = "error" },
    },
    -- your other custom config
  },
  config = function(_, opts)
    require("todo-comments").setup(opts)
    -- optionally set up keymaps
    vim.keymap.set("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next TODO comment" })
    vim.keymap.set("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Previous TODO comment" })
    vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { desc = "Todos (Trouble)" })
    vim.keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "Search Todos" })
  end,
}
