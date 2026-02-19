local M = {}

function M.apply() 
	local groups = vim.fn.getcompletion("@", "highlight")

	for _, group in ipairs(groups) do
    local base = group:match("^(@[%w_%.]+)%.%w+$")

		if base and vim.fn.hlexists(base) == 1 then
			vim.api.nvim_set_hl(0, group, { link = base, default = true })
		end
	end
end

return M
