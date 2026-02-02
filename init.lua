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

vim.api.nvim_set_hl(0, "MiniFilesDirectory", { fg = "#a0a0c0", italic = false})
vim.api.nvim_set_hl(0, "MiniFilesFile",      { fg = "#d0d0e0" })
vim.api.nvim_set_hl(0, "MiniFilesNormal",    { bg = "#18191a", fg = "#c0c0d0" })
vim.api.nvim_set_hl(0, "MiniFilesCursorLine",{ bg = "#25262a" })
vim.api.nvim_set_hl(0, "MiniFilesBorder",    { fg = "#404050" })
vim.api.nvim_set_hl(0, "MiniFilesTitle",     { fg = "#9090b0", bold = true })
vim.api.nvim_set_hl(0, "MiniFilesTitleFocused", { fg = "#b0b0d0", bold = true })
vim.api.nvim_set_hl(0, "MiniFilesBorderModified", { fg = "#707090" })

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
