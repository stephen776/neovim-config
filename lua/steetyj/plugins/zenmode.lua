local status, zen = pcall(require, "zen-mode")
if not status then
	return
end

zen.setup({
	window = {
		width = 90,
		options = {
			number = true,
			relativenumber = true,
		},
	},
})
