-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>.", "<CMD>Oil<CR>", { desc = "Launch Oil" })
vim.keymap.set("n", "<leader><leader>", "<CMD>Telescope find_files<CR>", { desc = "Find files in project" })
