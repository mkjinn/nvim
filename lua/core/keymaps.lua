---------------------------------------------------------
-- Default core keymaps
----------------------------------------------------------
local keymap = vim.keymap
local cmd = vim.cmd

-- jk
-- vim.keymap.set("i", "jj", "<Esc>")
keymap.set("i", "jk", "<Esc>")
keymap.set("i", "kj", "<Esc>")

-- move line or v-block
keymap.set("i", "<C-j>", "<Esc><cmd>m .+1<CR>==gi")
keymap.set("i", "<C-k>", "<Esc><cmd>m .-2<CR>==gi")
keymap.set("x", "J", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
keymap.set("x", "K", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab

-- buffers
keymap.set("n", "<leader>bo", ":new<CR>") -- open new tab
keymap.set("n", "<leader>bd", ":bdelete<CR>") -- close current tab
keymap.set("n", "<leader>bp", ":bp<CR>") --  go to previous tab
keymap.set("n", "<leader>bn", ":bn<CR>") --  go to next tab


-- up down
keymap.set("n", "<C-d>", "15j")
keymap.set("n", "<C-u>", "15k")

