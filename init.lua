package.path = package.path .. ';/home/xator/.config/nvim/?.lua'

vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.api.nvim_set_option("clipboard","unnamed")
-- Check if the LazyVim plugin manager is installed, and if not, clone it from GitHub
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Add the path to the LazyVim plugin manager to the Vim runtime path
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
--  require("plugins"),
  require("plugins2")
)
require("lspConfig")

vim.cmd('colorscheme gruvbox')
