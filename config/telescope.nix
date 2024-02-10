{ pkgs, ... }: {
  plugins.telescope = {
    enable = true;
    extensions = {
      file_browser.enable = true;
      fzf-native.enable = true;
      project-nvim.enable = true;
    };
    keymaps = {
      "<leader>pf" = {
        action = "find_files";
        desc = "Find files in the current Project";
      };
      "<C-p>" = {
        action = "git_files";
        desc = "Git Files";
      };
      # "<leader>ps" = {
      #   action = ''
      #     function() grep_string({ search = vim.fn.input("Grep > ") }); end'';
      #   desc = "Project Search with Grep";
      # };
      "<leader>pg" = { action = "live_grep"; };
      "<leader>fb" = { action = "buffers"; };
      "<leader>fh" = { action = "help_tags"; };
      "<leader>r" = {
        action = "keymaps";
        desc = "Telescope Keymaps";
      };
      "<C-q>" = {
        action = "quickfix";
        desc = "Quickfix List";
      };
    };
  };
}
