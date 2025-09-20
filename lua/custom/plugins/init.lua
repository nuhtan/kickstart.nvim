return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'hedyhli/outline.nvim',
    lazy = true,
    keys = {
      { ' eo', ':Outline<CR>', desc = 'Outline', silent = true },
    },
    opts = {
      position = 'right',
    },
  },
  {
    'nvim-mini/mini.files',
    version = false,
    keys = {
      { ' ef', ':lua MiniFiles.open()<CR>', desc = 'File Selector', silent = true },
    },
    config = function()
      require('mini.files').setup()
    end,
  },
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    keys = {
      { ' ep', ":lua require('telescope').extensions.project.project{}<CR>", desc = 'Project Selector', silent = true },
    },
  },
}
