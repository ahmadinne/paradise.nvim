local cache = require("paradise.cache")

local M = {}

function M.setup(user_config)
	local cache_file = cache.file()

	-- load if exist
	if vim.loop.fs_stat(cache_file) then
		dofile(cache_file)
		return
	end

	-- otherwise build the theme
  vim.cmd("hi clear")
  vim.o.termguicolors = true
  vim.g.colors_name = "paradise"

	local config = require("paradise.config")
	if user_config then
		config.extend(user_config)
	end

  require("paradise.core")
  pcall(require, "paradise.plugins.blink")
  pcall(require, "paradise.plugins.nvimtree")
  pcall(require, "paradise.plugins.telescope")
	require("paradise.autolink").apply()

	require("paradise.compiler").compile()
end

if vim.g.colors_name ~= "paradise" then
	M.setup()
end

vim.api.nvim_create_user_command("ParadiseRebuild", function()
	os.remove(require("paradise.cache").file())
	print("Paradise cache cleared. Restart neovim to rebuild.")
end, {})

return M
