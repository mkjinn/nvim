-- ~/.config/lua/config/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

vim.g.mapleader = " " -- the leader key is used in many keymaps, 

local plugins = {
    -- plugins go here
    "nvim-lua/plenary.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-telescope/telescope.nvim", tag = '0.1.6',
        requires = { {"nvim-lua/plenary.nvim"}}},
    {"ThePrimeagen/harpoon", branch = "harpoon2",
        dependencies = {"nvim-lua/plenary.nvim"}},
    {"mbbill/undotree"},
    {"tpope/vim-fugitive"},
    {"L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp", dependencies = {'saadparwaiz1/cmp_luasnip','rafamadriz/friendly-snippets'}}, --snippet engine
    {'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }},
    {"lewis6991/gitsigns.nvim"},
    {"m4xshen/autoclose.nvim"},
    -- {"folke/which-key.nvim", config = function () vim.o.timeout = true vim.o.timeoutlen = 300 end},

    -- lsp configuration
        {"neovim/nvim-lspconfig"}, --lsp configs
        {"hrsh7th/cmp-nvim-lsp"}, -- autocompletion
        {"hrsh7th/nvim-cmp"}, --additional autocompletion
        {"williamboman/mason.nvim"}, --lsp package manager
        {"williamboman/mason-lspconfig.nvim"}, --lsp package manager configs

    -- color scheme 
    {'rebelot/kanagawa.nvim'},
    {'gbprod/nord.nvim'},
    {'sainnhe/everforest'},
    {'sainnhe/gruvbox-material'},
    {'xero/miasma.nvim'},

    -- go
    { "ray-x/go.nvim",
        dependencies = {"ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"},
        event = {"CmdlineEnter"},
        ft = {"go", "gomod"},
        build = ':lua require("go.install").update_all_sync()'
    },

}



require("lazy").setup(plugins, {})

