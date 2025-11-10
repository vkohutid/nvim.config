return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = { enabled = true },
    indent = { enabled = true },
    notifier = { enabled = true },
    scroll = { enabled = false },
    animate = { enabled = false },
    picker = { enabled = true },
    toggle = { enabled = true },
    words = { enabled = true },
    diff = { enabled = false }, -- Disable to avoid conflict with gitsigns
    git = { enabled = false }, -- Disable to avoid conflict with gitsigns
  },
}
