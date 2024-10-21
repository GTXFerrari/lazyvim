-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--  Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize with arrows
-- See ':h resize' for more info
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Resize window up" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Resize window down" })
vim.keymap.set("n", "<C-Left>", ":vertical-resize +2<CR>", { desc = "Resize window left" })
vim.keymap.set("n", "<C-Right>", ":vertical-resize -2<CR>", { desc = "Resize window right" })

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Cycle next buffer using Shift + l" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Cycle previous buffer using Shift + h" })

-- Move highlighted text together
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Chmod
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make a file executable (UNIX)" })
