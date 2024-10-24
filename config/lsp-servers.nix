{
  plugins = {
    lsp = {
      enable = true;
      servers = {

        # nix
        nixd = {
          enable = true;
          settings.formatting.command = [ "alejandra" ];
        };

        # ansible
        ansiblels.enable = true;

        # bash
        bashls.enable = true;

        # docker
        dockerls.enable = true;

        # go
        gopls.enable = true;

        # html
        html.enable = true;

        # markdown
        marksman.enable = true;

        #python
        pyright.enable = true;

        #yaml
        yamlls.enable = true;

        # javascript / typescript
        ts_ls.enable = true;

        # lua
        lua_ls.enable = true;

        # rust
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };

        # terraform
        terraformls.enable = true;

        # graphql
        graphql.enable = true;

        #
      };
    };
  };
}
