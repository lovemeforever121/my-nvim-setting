--keymap to change leader to space
vim.g.mapleader = " "

--keymapt to enter normal mode from insert mode
vim.keymap.set("i", "jj", "<Esc>")

--keymap to run python

vim.keymap.set("n", "<leader>pr", ":!python3 %<cr>")

--keymap to run node
vim.keymap.set("n", "<leader>nr", ":!node %<cr>")

--keymap to move selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--keymap to join below line with currentline
vim.keymap.set("n", "J", "mzJ`z")

--keymap to move page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--keymap to move between searched term
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to system register
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes the word permanently
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- this stops accidental quitting
vim.keymap.set("n", "Q", "<nop>")

-- this formats the whole file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- this is to move in errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- this is to open nvim lazyplugin.lua
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/santosh/lazyplugin.lua<CR>");

-- this sources the file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- cody
vim.keymap.set("v", "<C-j>", "<cmd>CodyAsk<CR>")
vim.keymap.set("n", "<leader>ct", "<cmd>CodyToggle<CR>")
