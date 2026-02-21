return {
  "folke/tokyonight.nvim",
  lazy = false,        -- carrega imediatamente
  priority = 1000,     -- carrega antes de outros plugins
  config = function()
    require("tokyonight").setup({
      style = "night",  -- escolha: "night", "storm", "day", "moon"
      transparent = false,
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
