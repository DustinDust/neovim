return {
	"kdheepak/lazygit.nvim",
    enabled = false,
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd          = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	keys         = {
		{ "<leader>gl", "<cmd>LazyGit<cr>", desc = "LazyGit" }
	}
}
