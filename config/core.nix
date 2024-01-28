{
  config = {

    globals = {
      mapleader = " ";

      clipboard = {
        register = "unnamedplus";
        providers.xclip.enable = true;
      };
    };

    options = {
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
      undodir = "/home/jherrera/.neovim/undodir";
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
  };
}
