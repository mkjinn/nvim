local t = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', t.find_files, {})
vim.keymap.set('n', '<leader>fg', t.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    t.grep_string({search = vim.fn.input(":Grep > ")})
end)

