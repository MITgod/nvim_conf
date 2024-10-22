return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust_analyzer",
        "clangd",
        -- Add other LSP servers you want to ensure are installed
      },
    },
  },
}
