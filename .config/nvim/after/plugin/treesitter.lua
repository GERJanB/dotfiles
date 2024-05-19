require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {"javascript", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query", "toml" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indet = { enable = true },
  rainbow = {
	  enable = true,
	  extended_mode = true,
	  max_file_lines = nil
  }
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesittzer#foldexpr()'
