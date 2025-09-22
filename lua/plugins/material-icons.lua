-- lua/plugins/material-icons.lua
return {
  "DaikyXendo/nvim-material-icon",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- material-icon auto-registers its icons
    -- now apply YOUR overrides last:
    require("nvim-web-devicons").set_icon({
      zsh = { icon = "", color = "#428850", cterm_color = "65", name = "Zsh" },
      [".zshrc"] = { icon = "", color = "#428850", cterm_color = "65", name = "ZshRC" },
      zshrc      = { icon = "", color = "#428850", cterm_color = "65", name = "ZshRC" },
    })
  end,
}
