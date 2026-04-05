return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        terminal_colors = true,
        transparent_mode = false,
      })
      vim.cmd.colorscheme("gruvbox")

      local set_hl = vim.api.nvim_set_hl
      set_hl(0, "NormalFloat", { bg = "#1d2021" })
      set_hl(0, "FloatBorder", { fg = "#d79921", bg = "#1d2021" })
      set_hl(0, "WinSeparator", { fg = "#504945" })
    end,
  },
}
