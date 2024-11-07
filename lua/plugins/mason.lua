return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        "gitlab-ci-ls",
        -- Add other LSP servers you want to ensure are installed
      },
    },
  },
}
