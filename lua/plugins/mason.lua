return {
  {
    "williamboman/mason.nvim",
    -- optional = true,
    opts = { ensure_installed = { "actionlint" } },
    -- opts = function(_, opts)
    --   if type(opts.ensure_installed) == "table" then
    --     vim.list_extend(
    --       opts.ensure_installed,
    --       { "clangd", "gopls", "actionlint", "dockerfile-language-server", "ruff" }
    --     )
    --   end
    -- end,
  },
}
