{ pkgs, ... }: {
  plugins = {
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
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };
          trim_newlines.enable = true;
          trim_whitespace.enable = true;
        };
      };
    };
  };
}
