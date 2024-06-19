return {
	{ "echasnovski/mini.nvim", version = false },
	{
		"echasnovski/mini.ai",
		version = false,
		config = function()
			local spec_treesitter = require("mini.ai").gen_spec.treesitter
			require("mini.ai").setup({
				-- Custom configuration can go here
			})
		end,
	},
	{
		"echasnovski/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup({
				-- Custom configuration can go here
			})
		end,
	},
}
