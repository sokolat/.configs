-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--  vim file navigation
keymap.set("n", "<leader>ef", "G", { desc = "Move to eof without living normal mode" }) --  Move to eof without living normal mode
keymap.set("n", "<leader>el", "$", { desc = "Move to eol without living normal mode" }) --  Move to eol without living normal mode

-- window navigation
keymap.set("n", "<leader>le", "<C-W><C-H>", { desc = "Move left" }) --  Move left
keymap.set("n", "<leader>ri", "<C-W><C-L>", { desc = "Move right" }) --  Move right
keymap.set("n", "<leader>al", "<C-W>p", { desc = "toggle" }) -- toggle
keymap.set("n", "<leader>do", "<C-W>j", { desc = "bottom" }) -- bottom
keymap.set("n", "<leader>up", "<C-W>k", { desc = "up" }) -- up

keymap.set("n", "<leader>br", "<C-W>w", { desc = "bottom right" }) -- bottom right
keymap.set("n", "<leader>ul", "<C-W>W", { desc = "up left" }) -- up left

-- quit terminal mode
keymap.set("t", "<C-n>", "<C-\\><C-n>", { desc = "quit terminal mode" }) -- quit terminal mode
