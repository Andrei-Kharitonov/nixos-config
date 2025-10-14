-- Registers previewer
return {
  "tversteeg/registers.nvim",
  config = function()
    require("registers").setup({
      bind_keys = {
        normal = false,
        visual = false,
        insert = false,
      },
      show_empty = false,
      show_register_types = false,
      system_clipboard = false,
      symbols = {
        newline = "⏎",
        space = " ",
        tab = "→",
      },
      window = {
        max_width = 40,
        highlight_cursorline = true,
        border = "rounded",
        transparency = 20,
      },
    })
  end
}