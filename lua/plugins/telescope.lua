return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
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
  config = function(_, opts) require("telescope").setup(opts) end,
}
