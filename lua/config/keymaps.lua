-- Keymaps are automatically loaded on the VeryLazy ekent
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-1", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-2>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-1>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<CR>", "o<Esc>", { noremap = true })
vim.keymap.set("n", "<leader><CR>", "O<Esc>", { noremap = true })

vim.keymap.set("i", "jj", "<Esc><Esc>", { noremap = true })

vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')
