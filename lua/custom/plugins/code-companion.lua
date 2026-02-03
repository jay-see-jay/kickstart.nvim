return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        xai = function()
          return require('codecompanion.adapters').extend('xai', {
            schema = {
              model = {
                default = 'grok-4-latest',
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'xai',
          model = 'grok-4-latest',
        },
        inline = {
          adapter = 'xai',
          model = 'grok-4-latest',
        },
      },
    }
  end,
  opts = {},
}
