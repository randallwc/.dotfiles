return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_bg = true,
      overrides = {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },
        NeoTreeWinSeparator = { bg = "none" },
        SignColumn = { bg = "none" },
        FoldColumn = { bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopeBorder = { bg = "none" },
      },
    },
    config = function(_, opts)
      require("dracula").setup(opts)
      vim.cmd.colorscheme("dracula")
    end,
  },
}
