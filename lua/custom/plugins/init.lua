return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        'hedyhli/outline.nvim',
        lazy = true,
        keys = {
            { '\\/', ':Outline<CR>', desc = 'Outline', silent = true },

        },
        opts = {
            position='right',
        }
    },
    {
        'nvim-mini/mini.files',
        version = false,
        config = function()
           require('mini.files').setup() 
        end
    },
    {
        'nvim-telescope/telescope-project.nvim',
        dependencies = {'nvim-telescope/telescope.nvim'},
    }
}
