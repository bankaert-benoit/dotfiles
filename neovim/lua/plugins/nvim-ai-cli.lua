return {
	{ 
		dir = "~/perso/nvim-ai-cli", 
		config = function()
			require("nvim-ai-cli").setup({
				cmd = "agy",
				on_open = function()
					vim.notify("Test on open")
				end,
				on_close = function()
					vim.notify("Test on close")
				end,
			})
		end,
	}
	-- "bankaert-benoit/nvim-ai-cli",
	-- tag = "v0.1",
	--  config = function()
	--    require("nvim-ai-cli").setup({
	--      cmd = "agy",
	--    })
	--  end,
} 
