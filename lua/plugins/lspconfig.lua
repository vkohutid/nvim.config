return {
  "neovim/nvim-lspconfig",
  keys = {
    -- Disable LazyVim's default gr* keymaps
    { "gra", false },
    { "grn", false },
    { "grr", false },
    { "gri", false },
    { "grt", false },
  },
  opts = {
    servers = {
      biome = {},
      gopls = {
        settings = {
          gopls = {
            hints = {
              compositeLiteralFields = true,
              constantValues = true,
              parameterNames = true,
              assignVariableTypes = true,
            },
            usePlaceholders = true,
          },
        },
      },
      vtsls = {
        settings = {
          typescript = { inlayHints = { parameterNames = { enabled = "all" } } },
          javascript = { inlayHints = { parameterNames = { enabled = "all" } } },
        },
      },
      dockerls = {},
      docker_compose_language_service = {},
      marksman = {},
      lua_ls = {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      },
      typos_lsp = {
        filetypes = { "*" },
        init_options = { codeActions = true },
      },
      fish_lsp = {},
    },
  },
}
