return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- load before other start plugins
    config = function()
      vim.cmd.colorscheme("catppuccin-frappe") -- or latte, frappe, macchiato, mocha
    end,
  },
}
