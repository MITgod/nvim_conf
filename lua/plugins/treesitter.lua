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
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      vim.treesitter.language.register("html", "wssp")
      vim.treesitter.language.register("html", "wssi")
    end,
  },
}
