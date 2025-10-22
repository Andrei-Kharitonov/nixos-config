-- View tab paddings
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "VeryLazy",
  config = function()
    require("ibl").setup({
      indent = {
        char = "▏",
        highlight = "LspCodeLens",
      },
      whitespace = {
        highlight = "LspCodeLens",
      },
      scope = {
        enabled = false,
      },
      exclude = {
        filetypes = {
          "dashboard",
          "neo-tree",
          "notify",
        },
      },
    })
  end,
}
