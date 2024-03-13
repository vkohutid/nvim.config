-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""

-- Inform vim how to enable undercurl in wezterm
vim.api.nvim_set_option("t_Cs", "\27[4:3m")
-- Highlighting
vim.api.nvim_command("hi SpellBad   guisp=red    gui=undercurl term=underline cterm=undercurl")
vim.api.nvim_command("hi SpellCap   guisp=yellow gui=undercurl term=underline cterm=undercurl")
vim.api.nvim_command("hi SpellRare  guisp=blue   gui=undercurl term=underline cterm=undercurl")
vim.api.nvim_command("hi SpellLocal guisp=orange gui=undercurl term=underline cterm=undercurl")

-- A text with spellling mistake in vim. Check that underline or undercurl are OK.

vim.diagnostic.config({
  underline = true,
})

vim.filetype.add({ extension = { templ = "templ" } })
