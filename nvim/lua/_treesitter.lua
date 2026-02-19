require('nvim-treesitter').install({
	"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
	"python", "go", "yaml", "javascript", "html", "rust", "vue", "comment"
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		"go", "python", "javascript", "vue", "vim", "lua", "markdown"
	},
	callback = function() vim.treesitter.start() end,
})

-- This is old
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/4767
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/8424
-- Still kinda confused about things.
-- require('nvim-treesitter.config').setup({
-- 		ensure_installed = {
-- 			"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
-- 			"python", "go", "yaml", "javascript"
-- 		},
-- 		-- Automatically install missing parsers when entering buffer
-- 		-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
-- 		auto_install = false,
-- 		highlight = {
-- 			enable = true
-- 		},
-- 		markdown = {
-- 			enable = true
-- 		}
-- 	}
-- )
