require("config.options")
require("config.keymaps")
require("config.lazy")

require("toggleterm").setup()
vim.notify = require("notify")

-- disable deprecated warnings
vim.deprecate = function() end