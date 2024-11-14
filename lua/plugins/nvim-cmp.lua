return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.completion.autocomplete = false
      opts.mapping["<CR>"] = cmp.mapping.confirm({ select = true })
      opts.mapping["<C-Space>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.close()
        else
          cmp.complete()
        end
      end)
      opts.window = {
        completion = {
          border = {
            { "󱐋", "WarningMsg" },
            { "─", "Comment" },
            { "╮", "Comment" },
            { "│", "Comment" },
            { "╯", "Comment" },
            { "─", "Comment" },
            { "╰", "Comment" },
            { "│", "Comment" },
          },
          scrollbar = false,
          winblend = 0,
        },
        documentation = {
          border = {
            { "󰙎", "DiagnosticHint" },
            { "─", "Comment" },
            { "╮", "Comment" },
            { "│", "Comment" },
            { "╯", "Comment" },
            { "─", "Comment" },
            { "╰", "Comment" },
            { "│", "Comment" },
          },
          scrollbar = false,
          winblend = 0,
        },
      }
    end,
  },
}
