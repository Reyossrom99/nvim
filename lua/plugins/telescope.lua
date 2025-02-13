return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },

      config = function()
	
	require('telescope').setup{
		pickers = {
			find_files = {
     				theme = "ivy",
    			}
		},
	}      
      	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

      end
}
