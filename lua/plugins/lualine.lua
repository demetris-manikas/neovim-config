return {
    "nvim-lualine/lualine.nvim",
    priority = 1000,
    config = function ()
        require("lualine").setup({
            options = {
                theme = "dracula"
            }
        })
    end
}
