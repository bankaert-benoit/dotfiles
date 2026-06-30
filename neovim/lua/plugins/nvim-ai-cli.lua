return {
	"bankaert-benoit/nvim-ai-cli",
	tag = "v0.1",
	 config = function()
	   require("nvim-ai-cli").setup({
	     cmd = "agy",
	   })
	 end,
}
