local M = {}

---Change paradise option (vim.g.paradise_config.option)
---It can't be changed directly by modifying that field due to a Neovim lua bug with global variables (paradise_config is a global variable)
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
    local cfg = vim.g.paradise_config
    cfg[opt] = value
    vim.g.paradise_config = cfg
end

---Apply the colorscheme (same as ':colorscheme paradise')
function M.colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true
    vim.g.colors_name = "paradise"
    require('paradise.highlights').setup()
    require('paradise.terminal').setup()
end

---Setup paradise.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
    if not vim.g.paradise_config or not vim.g.paradise_config.loaded then    -- if it's the first time setup() is called
        vim.g.paradise_config = vim.tbl_deep_extend('keep', vim.g.paradise_config or {})
        M.set_options('loaded', true)
    end
end

function M.load()
  vim.api.nvim_command('colorscheme paradise')
end

return M
