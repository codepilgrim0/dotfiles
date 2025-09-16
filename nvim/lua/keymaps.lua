--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>wc", ":q<CR>", { desc = "Close current window" })
vim.keymap.set("n", "<leader>wb", ":split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split window vertically" })

vim.keymap.set("n", "<leader>wy", "ggVGy", { desc = "Yank the content of the current window" })

-- [[ File navigation ]]
vim.keymap.set("n", "<leader>oe", ":Oil<CR>", { desc = "Open file Oil manager" })

-- [[ Git integration ]]
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>", { desc = "Open Neogit, magit for Neovim" })
