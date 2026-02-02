local M = {}

function M.setup()
  vim.cmd("hi clear")
  vim.cmd("set termguicolors")
  vim.g.colors_name = "paradise"

  require("paradise.core")

  -- plugins (safe require)
  pcall(require, "paradise.plugins.blink")
end

return M
