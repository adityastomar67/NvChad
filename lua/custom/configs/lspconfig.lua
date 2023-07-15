local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup ({
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

lspconfig.pyright.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.bashls.setup ({
  cmd = { "bash-language-server", "start" },
	filetypes = { "zsh", "bash", "sh" },
})

lspconfig.emmet_ls.setup ({
	default_config = {
		cmd = { "ls_emmet", "--stdio" },
		filetypes = {
			"html",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"haml",
			"xml",
			"xsl",
			"pug",
			"slim",
			"sass",
			"stylus",
			"less",
			"sss",
		},
		root_dir = function(fname)
			return vim.loop.cwd()
		end,
	},
})

lspconfig.tsserver.setup ({
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.jsx", "javascriptreact" },
  cmd = { "typescript-language-server", "--stdio" }
})

lspconfig.tailwindcss.setup ({
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.jsx", "javascriptreact" },
  cmd = { "tailwindcss-language-server", "--stdio" }
})