{ ... }:
let

  currentSystemHome = builtins.getEnv "HOME";

  evaledUndoDir =
    if currentSystemHome == "" then
      "/tmp/neovim/undodir"
    else
      "${currentSystemHome}/.neovim/undodir";

in
{

  config = {

    globals = {
      mapleader = " ";

    };

    clipboard = {
      register = "unnamedplus";
      providers = {
        # wl-copy.enable = true;
        xclip.enable = true;
        # xsel.enable = true;
      };
    };

    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers
      cursorline = true;
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;

      smartindent = true;

      wrap = false;

      swapfile = false;
      backup = false;
      # To-do: assign user var for undodir
      undodir = evaledUndoDir;
      undofile = true;

      hlsearch = true;
      incsearch = true;

      termguicolors = true;

      scrolloff = 8;
      signcolumn = "yes";
      # isfname:append("@-@");
      # isfname = ''// "@~@"'';

      updatetime = 50;

      colorcolumn = "80";
    };

    extraConfigLua = ''
      function ColorMyPencils(color)
          color = color or "tokyonight-night"
          vim.cmd.colorscheme(color)

          -- vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
          -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
          vim.cmd.highlight({ "LineNr", "guifg=#456dd6" })
          vim.cmd.highlight({ "CursorLineNr", "guifg=yellow" })

      end

      ColorMyPencils()
    '';

  };
}
