local remote_session = vim.env.SSH_CONNECTION ~= nil or vim.env.SSH_TTY ~= nil

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        if remote_session then
          vim.cmd.colorscheme("tokyonight")
        else
          require("matugen").setup()
        end
      end,
    },
  },
}
