-- Terminal rounded border
vim.keymap.set("n", "<C-/>", function()
	local Util = require('lazyvim.util')
	Util.terminal(nil, {
		border = "rounded",
		size = {
			width = 100,
			height = 20
		},
		style = "minimal",
		margin = {
			top = -9,
			left = 32,
			right = -32,
			bottom = 9
		}
	})
end, { desc = "Term with border" })
