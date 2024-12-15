local function vsc(cmd)
    return function ()
        vim.fn.VSCodeNotify(cmd)
    end
end

vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set({"n","v"}, "<leader>y", '"+y')
vim.keymap.set({"n","v"}, "<leader>p", '"+p')

vim.keymap.set("n", "<leader>a", "ggVG")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

vim.keymap.set("n", "<leader>sb", vsc("workbench.action.toggleStatusbarVisibility"))
vim.keymap.set("n", "<leader>bc", vsc("breadcrumbs.toggle"))
vim.keymap.set("n", "<leader>st",vsc("workbench.action.hideEditorTabs"))
vim.keymap.set("n", "<leader>ht", vsc("workbench.action.showMultipleEditorTabs"))
vim.keymap.set("n", "<leader>w", vsc("workbench.action.closeActiveEditor"))
vim.keymap.set("n", "<leader>e", vsc("editor.action.marker.nextInFiles"))
vim.keymap.set("n", "<leader>E", vsc("editor.action.marker.previousInFiles"))