-- Colorscheme name:    paradise.nvim
-- Description:         Port of paradise theme for neovim
-- Original Author:     https://github.com/Manas140
-- Fork Author:         https://github.com/ahmadinne

local util = require("paradise.util")

-- Load the theme
local set = function()
	util.load()
end

return { set = set }
