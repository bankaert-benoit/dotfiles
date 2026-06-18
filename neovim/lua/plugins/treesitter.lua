local ENSURE_INSTALLED = { "lua", "html", "css", "typescript", "javascript", "yaml", "svelte", "jsdoc", "java", "angular" }

return {
	-- "nvim-treesitter/nvim-treesitter",
	-- branch = "master",
	-- build = ":TSUpdate",
	-- config = function()
	-- 	local configs = require("nvim-treesitter.configs")
	-- 	configs.setup({
	-- 		ensure_installed = ENSURE_INSTALLED,
	-- 		sync_install = false,
	-- 		highlight = { enable = true },
	-- 		indent = { enable = true },
	-- 		incremental_selection = { enable = true },
	-- 	})
	-- end,
	'nvim-treesitter/nvim-treesitter',
  dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
  lazy = false,
  build = ':TSUpdate',
	-- options = {
	-- 	auto_install = true,
	-- }
	config = function()
		local configs = require('nvim-treesitter')
		configs.install(ENSURE_INSTALLED)

		vim.api.nvim_create_autocmd('FileType', {
			pattern = ENSURE_INSTALLED,
			callback = function()
				vim.treesitter.start()                                    -- highlighting
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
			end,
		})
	end,
}
