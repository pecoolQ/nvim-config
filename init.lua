-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
-- ── VS Code: keep it minimal, let VS Code handle LSP/highlighting ─────────────

if vim.g.vscode then
  -- Stop any diagnostics/LSP from Neovim
  pcall(vim.diagnostic.disable)
  vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
  for _, c in pairs(vim.lsp.get_clients({})) do
    pcall(function() c.stop(true) end)
  end

  -- Kill syntax & search/visual highlights so nothing “bleeds” into VS Code
  vim.cmd([[
    syntax off
    filetype off
    set nohlsearch
    set nocursorline
  ]])

  -- Guard against built-ins trying to style things
  vim.g.loaded_matchparen = 1
  vim.g.loaded_netrwPlugin = 1
  vim.g.loaded_tarPlugin = 1
  vim.g.loaded_zipPlugin = 1

  -- Nothing else should run for VS Code
  return
end
-- ───────────────────────────────────────────────────────────────────────────────

local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  local result = vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
  if vim.v.shell_error ~= 0 then
    -- stylua: ignore
    vim.api.nvim_echo({ { ("Error cloning lazy.nvim:\n%s\n"):format(result), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
    vim.fn.getchar()
    vim.cmd.quit()
  end
end

vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"


require "custom.keymaps"
return {
  features = {
    icons = {
      enabled = false,
    },
  },
}
