vim.g.mapleader = ","

local keymap = vim.keymap -- for consiseness

--general keymaps 

keymap.set("n", "<leader>nh", ":nohl<CR>");

keymap.set("n", "x", '"_x');

keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --split window equally
keymap.set("n", "<leader>sx", ":close<CR>") --close the split window

keymap.set("n", "<leader>to", ":tabnew<CR>") --Open New Tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --Close Current Tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --Go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --Go to previous tab

--Plugins Keymap

--Vim maximizer Keymap
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

--NVim Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- Telescope Keymaps
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
