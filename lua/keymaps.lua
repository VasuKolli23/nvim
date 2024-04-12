local wk = require("which-key")

wk.register({
    b = {
        name = "+buffer",  -- name of the menu
        d = { ":bd<CR>", "Kill current buffer" }, -- Kill current buffer
        s = { ":w<CR>", "Save Buffer" },  -- to save the current buffer
        i = { ":Telescope buffers<CR>", "list current buffers" }, -- Change the buffer to another opened buffer
        r = { ":e<CR>GGzz", "Revert buffer" }, -- revert buffer
        p = { ":bp<CR>", "Previous buffer" }, -- previous buffer
        n = { ":bn<CR>", "Next buffer" }, -- next buffer
    },
    e = {
        name = "+explore", -- Neotree
        t = { ":Neotree toggle float<CR>", "Opens/closes file explorer" }, -- opens/closes neotree on the left
    },
    f = {
        name = "+files",
        f = { ":Telescope find_files<CR>", "Find files in current directory " }, -- find files in current directory 
        r = { ":Telescope oldfiles<CR>", "Open recent files" }, -- list recent files
        s = { ":w<CR>", "Save file" },  -- to save the current file
    },
    h = {
        name = "+help",
        k = { ":Telescope keymaps<CR>", "Show keymaps" }, -- shows keymaps
    },
    w = {
        name = "+window",
        v = { ":vsplit<CR>", "vertical split" },
        h = { ":split<CR>", "horizontal split" },
        c = { ":close<CR>", "close window" },
    },
}, { prefix = "<leader>" })

-- direct leader key bindings

local screen_width = vim.api.nvim_get_option('columns')
local terminal_width = math.floor(screen_width / 2)
local command = string.format(':ToggleTerm direction=vertical size=%d<CR>', terminal_width)

-- Terminal keymaps
vim.api.nvim_set_keymap('n', '<A-1>', ':ToggleTerm direction=horizontal <CR>', {noremap = true, silent = true}) -- opens a hsplit toggle term
vim.api.nvim_set_keymap('t', '<A-1>', [[<C-\><C-n>:ToggleTerm direction=horizontal<CR>]], {noremap = true, silent = true}) -- closes/buries the hsplit term
-- vim.api.nvim_set_keymap('n', '<A-2>', ':ToggleTerm direction=vertical size=100<CR>', {noremap = true, silent = true}) -- opens a vsplit toggle term
vim.api.nvim_set_keymap('n', '<A-2>', command, {noremap = true, silent = true}) -- opens a vsplit toggle term
vim.api.nvim_set_keymap('t', '<A-2>', [[<C-\><C-n>:ToggleTerm direction=vertical<CR>]], {noremap = true, silent = true}) -- closes/buries the vsplit term
vim.api.nvim_set_keymap('n', '<A-3>', ':ToggleTerm direction=float<CR>', {noremap = true, silent = true}) -- opens a floating toggle term
vim.api.nvim_set_keymap('t', '<A-3>', [[<C-\><C-n>:ToggleTerm direction=float<CR>]], {noremap = true, silent = true}) -- closes/buries the floating term

