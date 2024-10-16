-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    --{  
    --    -- Chosen Theme  
    --    'Yazeed1s/oh-lucy.nvim',
    --    priority = 1000,
    --    config = function()
    --      vim.cmd.colorscheme 'oh-lucy-evening'
    --    end,
    --},
    --{
    --    'catppuccin/nvim',
    --    name = 'catppuccin',
    --    priority = 1000,
    --    config = function()
    --        require("catppuccin").setup({flavour = "mocha"})
    --        vim.cmd.colorscheme "catppuccin"
    --    end
    --},
   {
       "rose-pine/neovim",
       name = 'rose-pine', 

       config = function()
           require("rose-pine").setup({
               variant = "moon", -- auto, main, moon, or dawn
               dark_variant = "main", -- main, moon, or dawn
               dim_inactive_windows = false,
               extend_background_behind_borders = true,

               enable = {
                   terminal = true,
                   legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                   migrations = true, -- Handle deprecated options automatically
               },

               styles = {
                   bold = true,
                   italic = true,
                   transparency = false,
               },

               groups = {
                   border = "muted",
                   link = "iris",
                   panel = "surface",

                   error = "love",
                   hint = "iris",
                   info = "foam",
                   note = "pine",
                   todo = "rose",
                   warn = "gold",

                   git_add = "foam",
                   git_change = "rose",
                   git_delete = "love",
                   git_dirty = "rose",
                   git_ignore = "muted",
                   git_merge = "iris",
                   git_rename = "pine",
                   git_stage = "iris",
                   git_text = "rose",
                   git_untracked = "subtle",

                   h1 = "iris",
                   h2 = "foam",
                   h3 = "rose",
                   h4 = "gold",
                   h5 = "pine",
                   h6 = "foam",
               }
           });

           vim.cmd.colorscheme "rose-pine" 
       end

   },
   -- {
   --     "nyoom-engineering/oxocarbon.nvim",
   --     config = function ()
   --         vim.opt.background = "dark" -- set this to dark or light
   --         vim.cmd("colorscheme oxocarbon")
   --         --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
   --         --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
   --         --vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
   --     end
   -- },
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
    }
}
