local M = {}

local recorded = {}

function M.hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)

	-- record for cache
	table.insert(recorded, { group, opts })
end

function M.get_recorded()
	return recorded
end

return M
