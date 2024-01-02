vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.splitright = true

vim.keymap.set("n", "<leader>n!", ":set number!<CR>", {})
vim.keymap.set("n", "<leader>N!", ":set relativenumber!<CR>", {})
vim.keymap.set("n", "<leader>|", ":vnew <CR>", {})
vim.keymap.set("n", "<leader>wh", ":new <CR>", {})
vim.keymap.set("n", "<C-s>", ":w <CR>", {})
vim.keymap.set("n", "<C-z>", "u <CR>", {})

local terminals = {}

local function showLazyGit()
	local cmd = "lazygit"
	local opts = vim.tbl_deep_extend("force", {
		ft = "lazyterm",
		size = { width = 0.9, height = 0.9 },
	}, { persistent = true })

	local termkey = vim.inspect({ cmd = cmd or "shell", cwd = opts.cwd, env = opts.env, count = vim.v.count1 })
	if terminals[termkey] and terminals[termkey]:buf_valid() then
		terminals[termkey]:toggle()
	else
		terminals[termkey] = require("lazy.util").float_term(cmd, opts)
		local buf = terminals[termkey].buf
		vim.b[buf].lazyterm_cmd = cmd
		if opts.esc_esc == false then
			vim.keymap.set("t", "<esc>", "<esc>", { buffer = buf, nowait = true })
		end
		if opts.ctrl_hjkl == false then
			vim.keymap.set("t", "<c-h>", "<c-h>", { buffer = buf, nowait = true })
			vim.keymap.set("t", "<c-j>", "<c-j>", { buffer = buf, nowait = true })
			vim.keymap.set("t", "<c-k>", "<c-k>", { buffer = buf, nowait = true })
			vim.keymap.set("t", "<c-l>", "<c-l>", { buffer = buf, nowait = true })
		end
        vim.api.nvim_create_autocmd("BufEnter", {
            buffer = buf,
            callback = function()
                vim.cmd.startinsert()
            end,
        })
	end
	return terminals[termkey]
end

vim.keymap.set("n", "<leader>gg", showLazyGit, {})
