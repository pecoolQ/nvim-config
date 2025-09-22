
return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  config = function()
    require('nvim-treesitter.configs').setup({
      textobjects = {
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]f"] = { query = "@call.outer", desc = "Next function call start" },
            ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
            ["]c"] = { query = "@class.outer", desc = "Next class start" },
            ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
            ["]l"] = { query = "@loop.outer", desc = "Next loop start" },
            ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
            ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
          },
          goto_next_end = {
            ["]F"] = { query = "@call.outer", desc = "Next function call end" },
            ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
            ["]C"] = { query = "@class.outer", desc = "Next class end" },
            ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
            ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
          },
          goto_previous_start = {
            ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
            ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
            ["[c"] = { query = "@class.outer", desc = "Prev class start" },
            ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
            ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
          },
          goto_previous_end = {
            ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
            ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
            ["[C"] = { query = "@class.outer", desc = "Prev class end" },
            ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
            ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
          },
        },
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["a="] = { query = "@assignment.outer", desc = "Outer assignment" },
            ["i="] = { query = "@assignment.inner", desc = "Inner assignment" },
            ["l="] = { query = "@assignment.lhs", desc = "Left-hand side" },
            ["r="] = { query = "@assignment.rhs", desc = "Right-hand side" },

            ["a:"] = { query = "@property.outer", desc = "Outer object property" },
            ["i:"] = { query = "@property.inner", desc = "Inner object property" },
            ["l:"] = { query = "@property.lhs", desc = "Property LHS" },
            ["r:"] = { query = "@property.rhs", desc = "Property RHS" },

            ["aa"] = { query = "@parameter.outer", desc = "Outer parameter" },
            ["ia"] = { query = "@parameter.inner", desc = "Inner parameter" },

            ["ai"] = { query = "@conditional.outer", desc = "Outer conditional" },
            ["ii"] = { query = "@conditional.inner", desc = "Inner conditional" },

            ["al"] = { query = "@loop.outer", desc = "Outer loop" },
            ["il"] = { query = "@loop.inner", desc = "Inner loop" },

            ["af"] = { query = "@call.outer", desc = "Outer function call" },
            ["if"] = { query = "@call.inner", desc = "Inner function call" },

            ["am"] = { query = "@function.outer", desc = "Outer method/function def" },
            ["im"] = { query = "@function.inner", desc = "Inner method/function def" },

            ["ac"] = { query = "@class.outer", desc = "Outer class" },
            ["ic"] = { query = "@class.inner", desc = "Inner class" },

            ["a/"] = { query = "@comment.outer", desc = "Outer comment" },
            ["i/"] = { query = "@comment.inner", desc = "Inner comment" },
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>na"] = "@parameter.inner",
            ["<leader>n:"] = "@property.outer",
            ["<leader>nm"] = "@function.outer",
          },
          swap_previous = {
            ["<leader>pa"] = "@parameter.inner",
            ["<leader>p:"] = "@property.outer",
            ["<leader>pm"] = "@function.outer",
          },
        },
      }
    })
    
    local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

    -- vim way: ; goes to the direction you were moving.
    vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move)
    vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_opposite)

    -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
    vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
    vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
    vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
    vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T) 
  end,
}