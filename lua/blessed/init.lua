-- Colorscheme name:    blessed.nvim
-- Description:         Port of Paradise theme for neovim
-- Original Author:     https://github.com/Manas140
-- Fork Author:         https://github.com/ahmadinne

local util = require("blessed.util")

-- Load the theme
local set = function()
	util.load()
end

return { set = set }
