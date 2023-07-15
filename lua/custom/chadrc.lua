 ---@type ChadrcConfig 
vim.cmd [[hi Comment gui=italic]]
vim.cmd [[hi Conditional gui=italic]]
vim.cmd [[hi Identifier gui=italic]]
vim.cmd [[hi SpecialChar gui=italic]]
vim.cmd [[hi SpecialComment gui=italic]]
vim.cmd [[hi String gui=italic]]
vim.cmd [[hi Todo gui=italic]]

 local M = {}
 M.ui = { theme = 'gruvchad', transparency = true }
 M.plugins = "custom.plugins"
 M.mappings = require("custom.mappings")
 return M