return {
  "nvim-cmp",
  opts = {
    window = {
      completion = require("cmp").config.window.bordered(),
      documentation = require("cmp").config.window.bordered(),
    },
  },
}
