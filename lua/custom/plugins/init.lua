-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {  
        -- Chosen Theme  
        'Yazeed1s/oh-lucy.nvim',
        priority = 1000,
        config = function()
          vim.cmd.colorscheme 'oh-lucy-evening'
        end,
      },
        
      {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
    },
    {
        "ahmedkhalf/project.nvim",
        config = function()
        require("project_nvim").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }, 
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        },
    },
    {
        'akinsho/toggleterm.nvim', version = "*", config = true
    },  
    {
        'simrat39/symbols-outline.nvim',
        config = function()
        require("symbols-outline").setup {}
      end
    },
    {
        'epwalsh/obsidian.nvim',
        version = '*',
        lazy = true,
        ft = 'markdown',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        opts = {
            workspaces = {}
        }
    },
}
