return {
  "tzachar/highlight-undo.nvim",
  event = "BufRead",
  config = function()
    require("highlight-undo").setup({
      hlgroup = "HighlightUndo",
      duration = 1000, -- stays visible for 2 seconds
    })

    -- function to pick a visible color depending on background
    local function set_dynamic_highlight()
      local bg = vim.o.background
      if bg == "dark" then
        -- Bright color for dark themes
        vim.api.nvim_set_hl(0, "HighlightUndo", { bg = "#ff5555", fg = "#ffffff", bold = true })
      else
        -- Darker, but still visible color for light themes
        vim.api.nvim_set_hl(0, "HighlightUndo", { bg = "#ff0000", fg = "#000000", bold = true })
      end
    end

    -- Set it immediately
    set_dynamic_highlight()

    -- Reapply when colorscheme changes
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = set_dynamic_highlight,
    })
  end,
}
