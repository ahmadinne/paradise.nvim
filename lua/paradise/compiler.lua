local util = require("paradise.util")
local cache = require("paradise.cache")

local M = {}

function M.compile()
	cache.ensure_dir()

	local file = io.open(cache.file(), "w")

	file:write("vim.cmd('hi clear')\n")
	file:write("vim.g.colors_name = 'paradise'\n")

	for _, item in ipairs(util.get_recorded()) do
		local group = item[1]
		local opts = item[2]

		local parts = {}
		for k, v in pairs(opts) do
			if type(v) == "string" then
				table.insert(parts, k .. " = '" .. v .. "'")
			elseif type(v) == "boolean" then
				table.insert(parts, k .. " = " .. tostring(v))
			end
		end

		file:write(
			string.format(
				"vim.api.nvim_set_hl(0, '%s', { %s })\n",
				group,
				table.concat(parts, ", ")
			)
		)
	end

	file:close()
end

return M
