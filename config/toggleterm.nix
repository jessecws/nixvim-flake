{ pkgs, ... }: {
  plugins = {
    toggleterm = {
      enable = true;
      autochdir = true;
      direction = "float";
    };
  };
}
