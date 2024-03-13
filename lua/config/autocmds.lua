-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Fix conseallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

vim.cmd("highlight SpellBad guisp=#FF0000")
vim.cmd("highlight SpellCap guisp=blue")
vim.cmd("highlight SpellLocal guisp=green")
vim.cmd("highlight SpellRare guisp=yellow")
