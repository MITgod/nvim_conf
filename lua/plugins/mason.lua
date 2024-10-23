return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        -- Add other LSP servers you want to ensure are installed
      },
    },
  },
}
