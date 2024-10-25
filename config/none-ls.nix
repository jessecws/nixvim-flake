{ ... }: {
  plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        code_actions = { gitsigns.enable = true; };
        hover.dictionary.enable = true;
        diagnostics = {
          markdownlint.enable = true;
          pylint.enable = true;
          yamllint.enable = true;
          terragrunt_validate.enable = true;
        };
        formatting = {
          nixfmt.enable = true;
          nixpkgs_fmt.enable = true;
          black.enable = true;
          isort.enable = true;
          gofmt.enable = true;
          golines.enable = true;
          markdownlint.enable = true;
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };
          terragrunt_fmt.enable = true;
        };
      };
    };
  };
}
