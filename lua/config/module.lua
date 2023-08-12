local M = {}

M.semicolon = function()
	local current_line = vim.fn.line(".")
	local line_contents = vim.fn.getline(current_line)
	vim.fn.setline(current_line, line_contents .. ";")
end

return M
