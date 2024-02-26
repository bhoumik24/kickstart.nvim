-- This file is automatically loaded by lazyvim.config.init.

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Set cursor back to vertical bar when exiting Vim

vim.api.nvim_create_autocmd("VimLeave", {
	group = augroup("RestoreCursorShapeOnExit"),
	callback = function()
		vim.o.guicursor = 'a:ver20'
	end
})
