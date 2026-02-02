local M = {}

function M.colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true
    vim.g.colors_name = "paradise"
    require('paradise.highlights').setup()
    require('paradise.terminal').setup()
end

function M.setup()
	vim.api.nvim_command('colorscheme paradise')
end

return M
