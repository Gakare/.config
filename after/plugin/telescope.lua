local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep -> ") });
end)
vim.keymap.set('n', '<leader>ls', builtin.live_grep, {})

require('telescope').setup({})
require('telescope').load_extension('dap')
vim.keymap.set('n', '<leader>dc', "<cmd>Telescope dap commands<cr>")
