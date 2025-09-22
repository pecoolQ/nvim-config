
---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  ft = {"python"},
  opts = function()
      return require "custom.configs.null-ls"
  end,
}
