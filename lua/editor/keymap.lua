local utils = require("editor.utils")
local map = utils.map
local nmap = utils.nmap
local xmap = utils.xmap
local d = utils.new_desc

vim.g.mapleader = ";"

-- quicker motion
nmap("j", "gj")
xmap("j", "gj")
nmap("J", "5j", d("Jump 5 lines down"))
xmap("J", "5j", d("Jump 5 lines down"))

nmap("k", "gk")
xmap("k", "gk")
nmap("K", "5k", d("Jump 5 lines up"))
xmap("K", "5k", d("Jump 5 lines up"))

map("i", "<C-h>", "<Home>")
map("i", "<C-e>", "<End>")
map("i", "<C-b>", "<ESC>bi")
map("i", "<C-f>", "<ESC>wa")

nmap("L", "g_", d("Jump to the end of the character"))
nmap("H", "^", d("Jump to the beginning of the character"))

xmap("L", "g_", d("Jump to the end of the character"))
xmap("H", "^", d("Jump to the beginning of the character"))

nmap("W", "5w", d("Jump 5 word forward"))
nmap("B", "5b", d("Jump 5 word backward"))

-- no more background key
-- nmap("<C-z>", "u", d("Revert change"))

-- move block easily
nmap("<", "<<", d("Decrease indent"))
nmap(">", ">>", d("Increase indent"))
xmap("<", "<gv", d("Increase indent"))
xmap(">", ">gv", d("Decrease indent"))

-- create tab like window
nmap("<C-T>h", ":tabprevious<CR>", d("Goto previous tab"))
nmap("<C-T>l", ":tabnext<CR>", d("Goto next tab"))
nmap("<C-T>n", ":tabnew<CR>", d("Create a new tab"))

-- save quickly
nmap(";w", ":w<CR>", d("Save buffer"))

<<<<<<< HEAD:lua/mappings/init.lua
-- do thing like ctrl c and ctrl v
xmap("<C-y>", [["+y]], d("Copy to system clipboard"))
nmap("<C-p>", [["+p]], d("Paste from system clipboard"))
nmap("<C-a>", [[:%y+<CR>]], d("Copy all to system clipboard"))
map("i", "<C-p>", [[<ESC>"+pa]], d("Paste from system clipboard"))

=======
>>>>>>> upstream/master:lua/editor/keymap.lua
-- shut down the search high light
nmap("<ESC>", ":nohlsearch<CR>", d("Close search highlight"))
-- no more finger expansion
map("i", "<A-;>", "<ESC>", d("Exit the insert mode"))

-- move around the window
nmap(";k", "<C-w>k", d("Jump to window above"))
nmap(";j", "<C-w>j", d("Jump to window below"))
nmap(";l", "<C-w>l", d("Jump to the left window"))
nmap(";h", "<C-w>h", d("Jump to the righ window"))

-- resize the window
nmap("<C-j>", ":res +5<CR>", d("Extend the upper boundary of the current window"))
nmap("<C-k>", ":res -5<CR>", d("Extend the lower boundary of the current window"))
nmap("<C-h>", ":vertical resize-5<CR>", d("Extend the right boundary of the current window"))
nmap("<C-l>", ":vertical resize+5<CR>", d("Extend the right boundary of the current window"))

-- kill buffer with ;q , quit window with :q.
nmap(";q", require("plugins.libs.bufdel").delete_buffer)

-- % is so hard to reach...
map({ "n", "x", "o" }, ",", "%", { noremap = false, silent = false })

-- Do not yank when pressing x
nmap("x", [["_x]])

-- Delete word backward and do not yank
nmap("dw", [[vb"_d]])

-- Backspace to delete without yank
map("n", "<BS>", [["_X]], { noremap = false })
map("v", "<BS>", [["_d]], { noremap = false })

map({ "n", "x" }, "d", [["_d]])
