return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},

			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
				todo_comments = {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				},
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),
				},
			},
		})

		-- Load the fzf extension
		telescope.load_extension("fzf")

		-- Load the todo-comments extension
		telescope.load_extension("todo-comments")

		-- Load the ui-select extension
		telescope.load_extension("ui-select")

		-- Set keymaps
		vim.keymap.set("n", "<leader>gf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fw", builtin.grep_string, {})
		vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>tr", builtin.resume, {})

		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set("n", "<leader>ps", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})

		vim.keymap.set("n", "<leader>tdc", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
