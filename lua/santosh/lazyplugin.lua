local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'rose-pine/neovim', name = 'rose-pine' },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-lua/plenary.nvim'},
    {'ThePrimeagen/harpoon'},
    {'mbbill/undotree'},
    {'tpope/vim-fugitive'},
    {
        "sourcegraph/sg.nvim",
        dependencies = { "nvim-lua/plenary.nvim"},
        config = function()
            require("sg").setup({

                enable_cody = true,
                accept_tos = true,
                autostart = true,
            })
        end

    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.api.nvim_command, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'akinsho/toggleterm.nvim', version = "*", config=true
    },
    {
        'numToStr/Comment.nvim',
        lazy = false
    },
    {
        'm4xshen/autoclose.nvim'
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    {
        "rafamadriz/friendly-snippets"
    },
    {
        'saadparwaiz1/cmp_luasnip'
    },
})
