{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        diagnostic = {
          "<leader>j" = {
            action = "goto_next";
            desc = "";
          };
          "<leader>k" = {
            action = "goto_prev";
            desc = "";
          };
        };
        lspBuf = {
          K = {
            action = "hover";
            desc = "";
          };
          gD = {
            action = "references";
            desc = "Go to global definition";
          };
          gd = {
            action = "definition";
            desc = "Go to definition";
          };
          gi = {
            action = "implementation";
            desc = "Go to implementation";
          };
          gt = {
            action = "type_definition";
            desc = "Go to type definition";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "";
          };
        };
      };
      servers = {

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

        # # markdown
        # marksman.enable = true;

        #python
        pyright.enable = true;

        #yaml
        yamlls.enable = true;

        # javascript / typescript
        ts_ls.enable = true;

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
