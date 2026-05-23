local remote_session = vim.env.SSH_CONNECTION ~= nil or vim.env.SSH_TTY ~= nil

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = remote_session and "tokyonight" or "base16"
    end,
  },
}
