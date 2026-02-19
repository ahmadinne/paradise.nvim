local M = {}

function M.setup()
	local config = require("paradise.config")
	if user_config then
		config.extend(user_config)
	end

  vim.cmd("hi clear")
  vim.cmd("set termguicolors")
  vim.g.colors_name = "paradise"

  require("paradise.core")
  pcall(require, "paradise.plugins.blink")
  pcall(require, "paradise.plugins.nvimtree")
  pcall(require, "paradise.plugins.telescope")
end

return M

