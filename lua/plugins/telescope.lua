return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>tff", builtin.find_files, { desc = "Telescope: find files" })
    vim.keymap.set("n", "<leader>tfg", builtin.live_grep, { desc = "Telescope: live grep" })
    vim.keymap.set("n", "<leader>tfb", builtin.buffers, { desc = "Telescope: list buffers" })
    vim.keymap.set("n", "<leader>tfh", builtin.help_tags, { desc = "Telescope: help tags" })
  end,
}
