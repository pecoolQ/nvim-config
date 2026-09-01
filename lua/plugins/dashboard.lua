return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      width = 80, -- wider so banner centers better
      row = nil,
      col = nil,

      preset = {
        header = [[
██████╗ ███████╗ ██████╗ ██████╗  ██████╗ ██╗     
██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔═══██╗██║     
██████╔╝█████╗  ██║     ██║   ██║██║   ██║██║     
██╔═══╝ ██╔══╝  ██║     ██║   ██║██║   ██║██║     
██║     ███████╗╚██████╗╚██████╔╝╚██████╔╝███████╗
╚═╝     ╚══════╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝
]],

        keys = {
          { icon = "📄 ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "📁 ", key = "e", desc = "File Explorer", action = ":Neotree toggle" },
          { icon = "🔍 ", key = "f", desc = "Find File", action = ":Telescope find_files" },
          { icon = "🕘 ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
          { icon = "🔎 ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
          { icon = "⚡ ", key = "l", desc = "Lazy Plugins", action = ":Lazy" },
          { icon = "🚪 ", key = "q", desc = "Quit", action = ":qa" },
        },
      },

      sections = {
        { section = "header", padding = 1 },
        { section = "keys", gap = 1, padding = 1 },
        { icon = "🕘 ", title = "Recent Files", section = "recent_files", indent = 2 },
        { section = "startup" },
      },
    },
  },
}