vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.wo.number = true
--Mappings
vim.keymap.set("n", "<leader>1", vim.cmd.bfirst)
vim.keymap.set("n", "<leader>0", vim.cmd.blast)
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>o", "o<Esc>k")
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete)
vim.keymap.set("v", "<leader>y", '"+yy', { noremap = true })
vim.keymap.set("n", "<leader> dy", "3<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fi", "/", { noremap = true })
vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true })
vim.opt.foldmethod = "syntax"
vim.opt.foldlevelstart = 99

vim.api.nvim_set_option("clipboard", "unnamedplus")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

plugins = require('configs.lazy')

require('lazy').setup(plugins)

require('configs.mappins')

