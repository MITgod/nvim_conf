-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
--

-- Disable autoformat for some buffers
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cpp", "h" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Handle CGate WebSkins files as HTML files
local function augroup(name)
  return vim.api.nvim_createaugroup("lazyvim" .. name, { clear = true })
end
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = augroup("custom_filetypes"),
  pattern = { ".wssi", ".wssp" },
  callback = function(args)
    vim.cmd("setfiletype html")
    -- Debug line (optional)
    print("Set filetype to HTML for: " .. vim.fn.expand("<afile>"))
  end,
})
