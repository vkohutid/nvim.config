local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- tsserver = {
      --   settings = {
      --   typescript = {
      --     inlayHints = {
      --       -- taken from https://github.com/typescript-language-server/typescript-language-server#workspacedidchangeconfiguration
      --       includeInlayEnumMemberValueHints = true,
      --       includeInlayFunctionLikeReturnTypeHints = true,
      --       includeInlayFunctionParameterTypeHints = true,
      --       includeInlayParameterNameHints = "all",
      --       includeInlayParameterNameHintsWhenArgumentMatchesName = true, -- false
      --       includeInlayPropertyDeclarationTypeHints = true,
      --       includeInlayVariableTypeHints = true,
      --       includeInlayVariableTypeHintsWhenTypeMatchesName = true, -- false
      --     },
      --   },
      --   javascript = {
      --     inlayHints = {
      --       includeInlayEnumMemberValueHints = true,
      --       includeInlayFunctionLikeReturnTypeHints = true,
      --       includeInlayFunctionParameterTypeHints = true,
      --       includeInlayParameterNameHints = "all",
      --       includeInlayParameterNameHintsWhenArgumentMatchesName = true,
      --       includeInlayPropertyDeclarationTypeHints = true,
      --       includeInlayVariableTypeHints = true,
      --       includeInlayVariableTypeHintsWhenTypeMatchesName = true,
      --     },
      --   },
      -- },
      --   _attach = function(client)
      --     client.server_capabilities.documentFormattingProvider = false
      --   end,
      -- },
      yamlls = {
        settings = {
          editor = {
            tabSize = 2,
          },
          yaml = {
            format = {
              singleQuote = true,
              bracketSpacing = true,
            },
          },
          redhat = {
            telemetry = {
              enabled = false,
            },
          },
        },
      },
      astro = {
        settings = {
          astro = {},
        },
      },
      biome = {},
      jsonls = {
        settings = {
          Json = {
            allowComments = true,
          },
        },
      },
      templ = {
        default_config = {
          cmd = { "templ", "lsp" },
          filetypes = { "templ" },
          root_dir = function(fname)
            return util.root_pattern("go.work", "go.mod", ".git")(fname)
          end,
        },
        docs = {
          description = [[
https://templ.guide

The official language server for the templ HTML templating language.
]],
          default_config = {
            root_dir = [[root_pattern('go.work', 'go.mod', '.git')]],
          },
        },
      },
    },
  },
}
