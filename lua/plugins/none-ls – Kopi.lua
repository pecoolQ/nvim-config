if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  ft = {"python"},
  opts = function()
      return require "custom.configs.null-ls"
  end,
}
