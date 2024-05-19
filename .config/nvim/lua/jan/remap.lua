vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "öö", "<Esc>")
vim.keymap.set("v", "öö", "<Esc>")
vim.keymap.set("c", "öö", "<Esc>")


vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F8> <cmd>call vimspector#StepOver()<cr>
nmap <F21> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F21> <cmd>call vimspector#StepOut()<cr>")
nmap <F7> <cmd>call vimspector#StepInto()<cr>")
]])

