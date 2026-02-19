local M = {}

local cache_dir = vim.fn.stdpath("cache") .. "/paradise"

function M.ensure_dir()
	if vim.fn.isdirectory(cache_dir) == 0 then
		vim.fn.mkdir(cache_dir, "p")
	end
end

function M.file()
	return cache_dir .. "/compiled.lua"
end

return M
