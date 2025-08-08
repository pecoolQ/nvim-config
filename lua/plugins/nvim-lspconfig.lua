if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "neovim/nvim-lspconfig",
    config = function() require "plugins.config.lspconfig"
    require "custom.config.lspconfig"
    end, 
  },
}
