return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      custom_highlights = function(colors)
        return {
          Normal = { bg = "#000000" },
          NormalNC = { bg = "#000000" },
          NormalFloat = { bg = "#000000" },
          FloatBorder = { bg = "#000000", fg = colors.surface2 },
          SignColumn = { bg = "#000000" },
          LineNr = { bg = "#000000", fg = colors.surface2 },
          CursorLineNr = { bg = "#000000", fg = colors.lavender, bold = true },
          EndOfBuffer = { bg = "#000000", fg = "#000000" },
          StatusLine = { bg = "#000000" },
          StatusLineNC = { bg = "#000000" },
          VertSplit = { bg = "#000000", fg = colors.surface1 },
          WinSeparator = { bg = "#000000", fg = colors.surface1 },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
