--
return {
  "hkupty/iron.nvim", -- ➊ Plugin name

  config = function() -- ➋ All Lua logic wrapped here
    -- ➌ Load modules
    local iron = require("iron.core")
    local view = require("iron.view")
    local common = require("iron.fts.common")

    -- ➍ Plugin setup
    iron.setup {
      config = {
        scratch_repl = true,

        repl_definition = {
          sh = { command = { "zsh" } },
          python = {
            command = { "python" },
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
          },
        },

        repl_filetype = function(_, ft) return ft end, -- ➎ Set REPL buffer filetype

        repl_open_cmd = view.split.vertical.botright(60), -- ✅ Open REPL in **right split**
      },

      -- ➏ Key mappings to interact with REPL
      keymaps = {
        toggle_repl = "<space>rr",
        restart_repl = "<space>rR",
        send_motion = "<space>sc",
        visual_send = "<space>sc",
        send_file = "<space>sf",
        send_line = "<space>sl",
        send_paragraph = "<space>sp",
        send_until_cursor = "<space>su",
        send_mark = "<space>sm",
        send_code_block = "<space>sb",
        send_code_block_and_move = "<space>sn",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>sq",
        clear = "<space>cl",
      },

      highlight = { italic = true },
      ignore_blank_lines = true,
    }

    -- ➐ Additional REPL commands
    vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>", { desc = "Focus REPL" })
    vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>", { desc = "Hide REPL" })
  end,
}
