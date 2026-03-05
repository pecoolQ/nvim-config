

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

--- Telescope

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Copy to system clipboard" })

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from system clipboard (insert mode)" })

-- Cut to system clipboard
vim.keymap.set("v", "<C-x>", '"+d', { desc = "Cut to system clipboard" })
