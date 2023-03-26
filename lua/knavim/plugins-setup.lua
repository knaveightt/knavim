-- installation of packer
--
-- this automatically setups packer for the first time using git if not already installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- This will run packer sync everytime I save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- protected call to invoke packer. 
-- If packer is not installed correctly the rest of this file will stop processing
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- let's start configuring packer
return packer.startup(function(use)
  -- packer will manage itself for updates
  use("wbthomason/packer.nvim")

  -- lua command tools and integrations
  use("nvim-lua/plenary.nvim")

  -- nightfox colorscheme, my prefered colorscheme collection
  use("EdenEast/nightfox.nvim")

  -- for motions related to splits and tmux support
  use("christoomey/vim-tmux-navigator")

  -- maximize a split and then return it back to a previous size
  use("szw/vim-maximizer")

  -- 'surround' motions, ys to create, cs to change (motion or char, then character to complete)
  use("tpope/vim-surround")

  -- commenting hotkeys
  use("numToStr/Comment.nvim")

  -- nvimtree file tree explorer
  use("nvim-tree/nvim-tree.lua")

  -- good icons
  use("kyazdani42/nvim-web-devicons")

  -- good status line
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding (first download native dependents for speed)
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

  -- basic autocompletion
  use("hrsh7th/nvim-cmp")   -- completion engine
  use("hrsh7th/cmp-buffer") -- source completions from the buffer
  use("hrsh7th/cmp-path") -- source file path completions

  -- code snippets
  use("L3MON4D3/LuaSnip")   -- snippets engine
  use("saadparwaiz1/cmp_luasnip") -- source completions for snippets
  use("rafamadriz/friendly-snippets") -- useful language snippets

  --
  -- Full LSP Server Configuration
  --

  -- managing & installing lsp servers, as well as formatters and linters
  use("williamboman/mason.nvim")            -- core installer
  use("williamboman/mason-lspconfig.nvim")  -- connect to core nvim lspconfig

  -- configuring the lsp servers
  use("neovim/nvim-lspconfig")              -- core nvim lspconfig
  use("hrsh7th/cmp-nvim-lsp")               -- completions for lspconfig
  use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp ui
  use("onsails/lspkind.nvim")                    -- vscode icons to autocompletion window

  -- formatting and linting (for future)
  --use("jose-elias-alvarez/null-ls.nvim") -- configuring the formatters / linters
  --use("jayp0521/mason-null-ls.nvim") -- install formatters / linters through mason

  -- treesitter 
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs")
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

  -- gitsigns
  use("lewis6991/gitsigns.nvim")

  -- start screen / dashboard
  use({ "startup-nvim/startup.nvim", requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}})

  -- bootstrap packer with this configuration
  if packer_bootstrap then
    require("packer").sync()
  end
end)

