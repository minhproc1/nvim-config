local status, cmp = pcall(require, "cmp")

if (not status) then return end

local lspkind = require 'lspkind'

local cmpMapping = cmp.mapping
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').tsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmpMapping.scroll_docs(-4),
    ['<C-f>'] = cmpMapping.scroll_docs(4),
    ['<C-Space>'] = cmpMapping.complete(),
    ['<C-e>'] = cmpMapping.close(),
    ['<CR>'] = cmpMapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
      noremap = true
    }),
    ['<TAB>'] = cmpMapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
        noremap = true
      })
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' }
  }),
  formatting = {
    format = lspkind.cmp_format({ wirth_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]

