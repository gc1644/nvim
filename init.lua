vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true         
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.pack.add({
  "https://github.com/vague-theme/vague.nvim",
  "https://github.com/nvim-mini/mini.files",
  "https://github.com/ThePrimeagen/vim-be-good",
})

require("vague").setup({
  transparent = false,
  italic = false,
})

vim.cmd.colorscheme("vague")   

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
