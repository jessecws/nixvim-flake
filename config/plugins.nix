{pkgs, ...}:
{
  plugins = {
    lualine.enable = true;

    telescope = {
      enable = true;
      extensions = {
        file_browser.enable = true;
        fzf-native.enable = true;
        project-nvim.enable = true;
      };
    };

    harpoon = {
      enable = true;
      enableTelescope = true;
    };

    dap = {
      enable = true;
      extensions.dap-ui.enable = true;
    };

    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        code_actions = { gitsigns.enable = true; };
        diagnostics = {
          flake8.enable = true;
          luacheck.enable = true;
          markdownlint.enable = true;
          pylint.enable = true;
          yamllint.enable = true;
        };
        formatting = {
          nixfmt.enable = true;
          nixpkgs_fmt.enable = true;
          black.enable = true;
          gofmt.enable = true;
          golines.enable = true;
          markdownlint.enable = true;
          prettier.enable = true;
        };
      };
    };

    friendly-snippets.enable = true;
    treesitter.enable = true;
    undotree.enable = true;
    fugitive.enable = true;
    nvim-tree.enable = true;
    barbar.enable = true;
    indent-blankline.enable = true;
    todo-comments.enable = true;
    gitsigns.enable = true;
    toggleterm.enable = true;
    trouble.enable = true;
    markdown-preview.enable = true;
    git-worktree.enable = true;
    treesitter-context.enable = true;
    project-nvim.enable = true;
    tmux-navigator.enable = true;
    surround.enable = true;
    ts-autotag.enable = true;
    emmet.enable = true;
    lsp-format.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [ 
    cheatsheet-nvim 
    comment-nvim
    vim-sleuth
    nvim-neoclip-lua
    csv-vim
    formatter-nvim
    telescope-zoxide
    vim-jsx-pretty
    html5-vim
  ];

  # To-do:
  # use {
  #   "AckslD/nvim-neoclip.lua",
  #   requires = {
  #     {'kkharji/sqlite.lua', module = 'sqlite'},
  #     -- you'll need at least one of these
  #     -- {'nvim-telescope/telescope.nvim'},
  #     -- {'ibhagwan/fzf-lua'},
  #   },
  #   config = function()
  #     require('neoclip').setup()
  #   end,
  # }

  # To-do:
  #    use { 'cljoly/telescope-repo.nvim' }

  # To-do:
  #    use { "yuezk/vim-js" }


}
