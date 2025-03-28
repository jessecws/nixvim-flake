{
  extraConfigLua = ''
    function ProjectSearch()
      local input = vim.fn.input("Grep > ")
      require('telescope.builtin').live_grep({ default_text = input })
    end
  '';

  keymaps = [{
    mode = [ "n" ];
    key = "<leader>ps";
    action = "<cmd>lua ProjectSearch()<CR>";
    options = {
      desc = "Project Search with Grep";
      silent = true;
      noremap = true;
    };
  }];

  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
      ui-select.enable = true;
      undo = {
        enable = true;
        settings = {
          time_format = "!%Y-%m-%dT%TZ";
          vim_diff_opts = { ctxlen = 8; };
        };
      };
    };
    keymaps = {
      "<leader>pf" = {
        action = "find_files";
        options = { desc = "Find files in the current Project"; };
      };
      "<C-p>" = {
        action = "git_files";
        options = { desc = "Git Files"; };
      };
      "<leader>pg" = { action = "live_grep"; };
      "<leader>fb" = { action = "buffers"; };
      "<leader>fh" = { action = "help_tags"; };
      "<leader>u" = { action = "undo"; };
      "<leader>r" = {
        action = "keymaps";
        options = { desc = "Telescope Keymaps"; };
      };
    };
    settings = {
      defaults = {
        mappings = {
          i = {
            "<C-q>" = {
              __raw =
                "require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist";
            };
          };
          n = {
            "<C-q>" = {
              __raw =
                "require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist";
            };
          };
        };
      };
    };
  };
}
