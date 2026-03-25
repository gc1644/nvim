vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Plugins
vim.pack.add({
  "https://github.com/vague-theme/vague.nvim",
  "https://github.com/nvim-mini/mini.files",
  "https://github.com/ThePrimeagen/vim-be-good",

-- LSP support
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
})

-- Theme
require("vague").setup({
  transparent = false,
  italic = false,
})
vim.cmd.colorscheme("vague")

-- File explorer
require("mini.files").setup({
  windows = {
    preview = false,
    width_focus = 30,
    width_nofocus = 15,
  },
  mappings = {
    go_in = 'l',
    go_in_plus = '<CR>',
    go_out = 'h',
    go_out_plus = 'H',
  },
})

vim.keymap.set("n", "<leader>e", function()
  local file = vim.api.nvim_buf_get_name(0)
  if file == "" then file = vim.fn.getcwd() end
  require("mini.files").open(file)
end, { desc = "Open mini.files" })

-- LSP Setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "basedpyright", "ruff" },
  automatic_enable = true,
})

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, silent = true }

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

vim.lsp.config("basedpyright", {
  on_attach = on_attach,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic",
      },
    },
  },
})
vim.lsp.enable("basedpyright")

vim.lsp.config("ruff", {
  on_attach = on_attach,
})
vim.lsp.enable("ruff")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
