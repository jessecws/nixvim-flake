{ pkgs, ... }: {
  plugins = {
    lualine.enable = true;

    dap = {
      enable = true;
      extensions.dap-ui.enable = true;
    };

    friendly-snippets.enable = true;
    treesitter.enable = true;
    undotree.enable = true;
    fugitive.enable = true;
    nvim-tree.enable = true;
    indent-blankline.enable = true;
    todo-comments.enable = true;
    gitsigns.enable = true;
    trouble.enable = true;
    markdown-preview.enable = true;
    git-worktree.enable = true;
    treesitter-context.enable = true;
    project-nvim.enable = true;
    tmux-navigator.enable = true;
    vim-surround.enable = true;
    ts-autotag.enable = true;
    emmet.enable = true;
    lsp-format.enable = true;
    mini = {
      enable = true;
      mockDevIcons = true;
      modules.icons = { };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    comment-nvim
    csv-vim
    html5-vim
    # nvim-neoclip-lua
    telescope-zoxide
    vim-jsx-pretty
    vim-sleuth
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
