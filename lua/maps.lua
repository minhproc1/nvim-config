local map = vim.keymap
local opts = { noremap = true, silent = true}

-- do not yank with x
map.set('n', 'x', '"_x')

-- Increment/decrement
map.set('n', '+', '<C-a>')
map.set('n', '-', '<C-x>')

-- Select all
map.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
map.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Create new line with CR without exiting normal mode
map.set('n', '<CR>', 'o<ESC>', { noremap = true })

-- Indent
map.set('v', '<TAB>', '>gv', { noremap = true })
map.set('v', '<S-TAB>', '<gv', { noremap = true })
map.set('n', '<TAB>', '>>_', { noremap = true })
map.set('n', '<S-TAB>', '<<_', { noremap = true })
map.set('i', '<S-TAB>', '<C-D>', { noremap = true })

-- Move lines up/down
map.set('n', '<A-j>', ':m .+1<CR>', opts)
map.set('n', '<A-k>', ':m .-2<CR>', opts)

-- Move block up/down
map.set('v', '<A-k>', ":m '>+1<CR>gv=gv", opts)
map.set('v', '<A-j>', ":m '<-2<CR>gv=gv", opts)

-- Print from yank register on insert mode Ctrl+P
map.set('i', '<C-v>', '<C-r>0')

-- New tab
map.set('n', 'te', ':tabedit<Return>', {silent = true})

-- Split window
map.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
map.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})

-- Move window
map.set('n', '<Space>', '<C-w>w')
map.set('', 's<left>', '<C-w>h')
map.set('', 's<up>', '<C-w>k')
map.set('', 's<right>', '<C-w>l')
map.set('', 's<down>', '<C-w>j')
map.set('', 'sh', '<C-w>h')
map.set('', 'sk', '<C-w>k')
map.set('', 'sj', '<C-w>j')
map.set('', 'sl', '<C-w>l')
