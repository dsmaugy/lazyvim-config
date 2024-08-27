return {
  { "iamcco/markdown-preview.nvim", enabled = "false" },

  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        theme = "light",
      })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
      -- vim.keymap.del("n", "<leader>cp")
      vim.keymap.set("n", "<leader>cP", require("peek").open, { buffer = buffer, desc = "Open Markdown Preview" })
    end,
  },
}
