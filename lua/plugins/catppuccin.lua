return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavor = "latte",
			no_italic = true,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
