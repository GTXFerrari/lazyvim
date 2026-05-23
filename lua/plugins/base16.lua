local remote_session = vim.env.SSH_CONNECTION ~= nil or vim.env.SSH_TTY ~= nil

return {
  "RRethy/base16-nvim",
  enabled = not remote_session,
  config = function()
    require("matugen").setup()
  end,
}
