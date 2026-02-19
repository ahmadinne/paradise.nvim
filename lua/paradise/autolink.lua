local M = {}

-- check if highlight group is actually defined (not just existing)
local function has_style(name)
  local ok, def = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
  return ok and next(def) ~= nil
end

-- generate fallback chain
local function fallback_chain(group)
  local chain = {}

  -- remove language suffix first
  local no_lang = group:gsub("%.%w+$", "")
  if no_lang ~= group then
    table.insert(chain, no_lang)
  end

  -- progressively remove last semantic segment
  local current = no_lang
  while true do
    local trimmed = current:match("^(.*)%.%w+$")
    if not trimmed then break end
    table.insert(chain, trimmed)
    current = trimmed
  end

  return chain
end

function M.apply()
  local groups = vim.fn.getcompletion("@", "highlight")

  for _, group in ipairs(groups) do
    -- skip if already styled directly
    if has_style(group) then
      goto continue
    end

    for _, fallback in ipairs(fallback_chain(group)) do
      if has_style(fallback) then
        vim.api.nvim_set_hl(0, group, {
          link = fallback,
          default = true,
        })
        break
      end
    end

    ::continue::
  end
end

return M

