local status, c = pcall(require, 'catppuccin')

if (not status) then
  print("colorscheme is not installed")
  return
end

local italic = "italic"

local dark_setup = {
  flavour = "mocha", -- latte, frappe, macchiato, mocha
			term_colors = true,
			transparent_background = false,
			no_italic = false,
			no_bold = false,
			styles = {
				comments = { italic },
				conditionals = { italic },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
			highlight_overrides = {
				mocha = function(C)
					return {
						TabLineSel = { bg = C.pink },
						CmpBorder = { fg = C.surface2 },
						Pmenu = { bg = C.none },
						TelescopeBorder = { link = "FloatBorder" },
					}
				end,
			},

}

c.setup(dark_setup)


-- vim.cmd.colorscheme "catppuccin"
