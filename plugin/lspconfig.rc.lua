USER = vim.fn.expand('$USER')

local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

local lua_ls_root_path = ""
local lua_ls_binary = ""

if vim.fn.has("mac") == 1 then
  lua_ls_root_path = "/Users/" .. USER .. "/.config/nvim/lua-language-server"
  lua_ls_binary = "/Users/" .. USER .. "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
  lua_ls_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
  lua_ls_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/lua-language-server"
else
  print("Unsupported system for LuaLS")
end

nvim_lsp.lua_ls.setup {
  cmd = { lua_ls_binary, "-E", lua_ls_root_path .. "/main.lua" },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true,[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
      }
    }
  }
}
