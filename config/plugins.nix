{
  plugins = {
    lualine.enable = true;
      
       nvim-cmp = {
       enable = true;
       autoEnableSources = true;
       sources = [
         {name = "nvim_lsp";}
         {name = "path";}
         {name = "buffer";}
       ];

       mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              elseif check_backspace() then
                fallback()
              else
                fallback()
              end
            end
          '';
          modes = [ "i" "s" ];
        };
    };
};

luasnip.enable = true;
cmp-buffer.enable = true;
cmp-path.enable = true;
cmp_luasnip.enable = true;
cmp-nvim-lsp.enable = true;
cmp-nvim-lua.enable = true;
friendly-snippets.enable = true;

telescope = {
  enable = true;
  extensions = {
    file_browser.enable = true;
    fzf-native.enable = true;
    project-nvim.enable = true;
    };
  };
treesitter.enable = true;
harpoon = {
enable = true;
enableTelescope = true;
};
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
dap = {
  enable = true;
  extensions.dap-ui.enable = true;
  };
git-worktree.enable = true;
treesitter-context.enable = true;
project-nvim.enable = true;
tmux-navigator.enable = true;
surround.enable = true;
ts-autotag.enable = true;
emmet.enable = true;
lsp-format.enable = true;
none-ls = {
  enable = true;
  enableLspFormat = true;
  sources = {
  code_actions = {
  gitsigns.enable = true;
  };
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
};

# To-do:
# add cheatsheet
# use {
#         'sudormrfbin/cheatsheet.nvim',
# 
#         requires = {
#             { 'nvim-telescope/telescope.nvim' },
#             { 'nvim-lua/popup.nvim' },
#             { 'nvim-lua/plenary.nvim' },
#         }
#     }

# To-do:
#    use { 'numToStr/Comment.nvim' }

# To-do:
#     use { 'tpope/vim-sleuth' }

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
#     use { 'chrisbra/csv.vim' }

# To-do:
#     use { 'mhartington/formatter.nvim' }

# To-do:
#     use { 'jvgrootveld/telescope-zoxide' }

# To-do:
#    use { 'cljoly/telescope-repo.nvim' }

# To-do:
#    use { "yuezk/vim-js" }
#    use { "maxmellon/vim-jsx-pretty" }

# To-do:
#    use { "othree/html5.vim" }



}

