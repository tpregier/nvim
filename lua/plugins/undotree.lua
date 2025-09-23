return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  keys = {
    { "<leader>i", "<cmd>UndotreeToggle<cr>", desc = "Toggle UndoTree" },
  },
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SplitWidth = 40
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_DiffpanelHeight = 12
    vim.g.undotree_HighlightChangedNodes = 1
    vim.g.undotree_HighlightChangedText = 1
    vim.g.undotree_PersistHistory = 1
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_WindowDiff = 1
    vim.g.undotree_AutoShowDiff = 1
  end,
}
