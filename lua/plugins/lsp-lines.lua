return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  config = function()
    require("lsp_lines").setup()

    -- Disable default virtual_text since lsp_lines replaces it
    vim.diagnostic.config({
      virtual_text = false,
    })

    -- Optional: toggle keymap
    vim.keymap.set("", "<leader>ll", require("lsp_lines").toggle, { desc = "Toggle LSP Lines" })
  end,
}
