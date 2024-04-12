-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- terminal colors
vim.opt.termguicolors = true

-- set line numbers
vim.opt.number = true

-- no swap or backup file
vim.bo.swapfile = false
vim.opt.backup = false

-- make sesarch case insensitive
vim.opt.smartcase = true

-- undo after reopening the file
vim.opt.undofile = true

-- configures the menu
vim.opt.wildmode = {"list:longest"}
vim.opt.wildmenu = true
vim.opt.wildoptions = "pum"
vim.opt.pumheight = 10 -- pop up menu height

-- indentation
vim.bo.smartindent = true
vim.bo.autoindent = true

-- git signs
vim.wo.signcolumn = 'yes'

-- unwanted characters
vim.cmd('set nocompatible')

-- clipboard copy
vim.opt.clipboard = "unnamedplus"

-- window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- enable mouse
vim.opt.mouse = 'a'

-- tabwidth
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- visual mode
vim.opt.virtualedit = "block"

-- substitution
vim.opt.inccommand = "split"

-- ignore case in search patterns
vim.opt.ignorecase = true

-- more space in the neovim command line for displaying messages
vim.opt.cmdheight = 1                           
