require("base")
require("highlights")
require("maps")
require("plugins")
require("colorscheme")

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_win = has "win32"
local is_mac = has "macunix"

if is_win then
  require('windows')
elseif is_mac then
  require('macos')
else
  require('linux')
end

