---@class util
---@field lsp util.lsp
---@field plugin util.plugin
---@field terminal util.terminal
local M = {
  lsp = require("util.lsp"),
  plugin = require("util.plugin"),
  terminal = require("util.terminal"),
}

---@param ms number
---@param fn fun(...)
function M.debounce(ms, fn)
  local timer = vim.uv.new_timer()

  if timer == nil then
    return fn
  end

  return function(...)
    local argv = { ... }

    timer:start(ms, 0, function()
      timer:stop()

      vim.schedule_wrap(fn)(unpack(argv))
    end)
  end
end

return M
