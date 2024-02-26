-- Terminal rounded border
vim.keymap.set("n", "<C-/>", function()
	local Util = require('lazyvim.util')
	Util.terminal(nil, {
		border = "rounded",
		size = {
			width = 50,
			height = 30
		},
		style = "minimal",
		margin = {
			top = -25,
			left = 30,
			right = -100,
			bottom = 25
		}
	})
end, { desc = "Term with border" })
