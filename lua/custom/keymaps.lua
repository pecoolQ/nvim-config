local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>tff", builtin.find_files, { desc = "Telescope: find files" })
vim.keymap.set("n", "<leader>tfg", builtin.live_grep, { desc = "Telescope: live grep" })
vim.keymap.set("n", "<leader>tfb", builtin.buffers, { desc = "Telescope: list buffers" })
vim.keymap.set("n", "<leader>tfh", builtin.help_tags, { desc = "Telescope: help tags" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })