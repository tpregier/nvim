-- return {
--   'uloco/bluloco.nvim',
--   lazy = false,
--   priority = 1000,
--   dependencies = { 'rktjmp/lush.nvim' },
--   config = function()
--     -- your optional config goes here, see below.
--   end,
-- }

return {
  -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfox", -- You can also use "nordfox", "dayfox", etc.
    },
  },
  -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dayfox", -- You can also use "nordfox", "dayfox", etc.
    },
  }, -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dawnfox", -- You can also use "nordfox", "dayfox", etc.
    },
  },
  -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "duskfox", -- You can also use "nordfox", "dayfox", etc.
    },
  },
  -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox", -- You can also use "nordfox", "dayfox", etc.
    },
  },
  -- Add Nightfox colorscheme
  { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to use Nightfox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox", -- You can also use "nordfox", "dayfox", etc.
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- make sure it loads first
    config = function()
      vim.o.background = "dark" -- or "light"
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
