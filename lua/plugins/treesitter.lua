return {
  {
    "nvim-treesitter/nvim-treesitter",
    opt = {
      ensure_installed = {
        "c",
        "cpp",
        "rust",
        "lua",
        "vim",
        "html",
      },
      highlight = {
        enable = true,
        -- This ensures your custom file types get HTML highlighting
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
