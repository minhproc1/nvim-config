-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local tb = require("telescope.builtin")
local map = vim.keymap
local opts = { noremap = true, silent = true }

-- do not yank with x
map.set("n", "x", '"_x')

-- Increment/decrement
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- Select all
map.set("n", "<C-a>", "gg<S-v>G")

-- New tab
map.set("n", "te", ":tabedit<Return>", { silent = true })

-- Create new line with CR without exiting normal mode
map.set("n", "<CR>", "o<ESC>", { noremap = true })

-- Indent
map.set("v", "<TAB>", ">gv", { noremap = true })
map.set("v", "<S-TAB>", "<gv", { noremap = true })
map.set("n", "<TAB>", ">>_", { noremap = true })
map.set("n", "<S-TAB>", "<<_", { noremap = true })
map.set("i", "<S-TAB>", "<C-D>", { noremap = true })

-- Print from yank register on insert mode Ctrl+P
map.set("i", "<C-v>", "<C-r>0")

-- New tab
map.set("n", "te", ":tabedit<Return>", { silent = true })

function vim.getVisualSelection()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

map.set("n", "<space>F", ":Telescope current_buffer_fuzzy_find<cr>", opts)
map.set("v", "<space>F", function()
  local text = vim.getVisualSelection()
  tb.current_buffer_fuzzy_find({ default_text = text })
end, opts)
map.set("v", "<space>/", function()
  local text = vim.getVisualSelection()
  tb.live_grep({ default_text = text })
end, opts)
