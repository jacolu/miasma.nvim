local M = {}

M.setup = function()
  local groups = require("miasma.groups").setup()
  vim.g.colors_name = "miasma"
  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end
return M
