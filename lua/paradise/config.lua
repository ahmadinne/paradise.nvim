local M = {
	transparent = false,
	italic_comments = true
}

function M.extend(opts)
	M = vim.tbl_deep_extend("force", M, opts or {})
end

return M
