return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {},
			},
		})
		require("telescope").load_extension("ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<C-f>", builtin.find_files, {})
		vim.keymap.set("n", "<C-g>", builtin.live_grep, {})
	end,
}
-- sudo apt-get install ripgrep fd-find
