{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ img-clip-nvim ];
  # extraConfigLua = ''
  # '';
  plugins.avante = {
    enable = true;
    settings = {
      claude = {
        endpoint = "https://api.anthropic.com";
        max_tokens = 4096;
        model = "claude-3-7-sonnet-20250219";
        temperature = 0;
      };
      diff = {
        autojump = true;
        debug = false;
        list_opener = "copen";
      };
      highlights = {
        diff = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
      };
      hints = { enabled = true; };
      mappings = {
        diff = {
          both = "cb";
          next = "]x";
          none = "c0";
          ours = "co";
          prev = "[x";
          theirs = "ct";
        };
      };
      provider = "claude";
      windows = {
        sidebar_header = {
          align = "center";
          rounded = true;
        };
        width = 30;
        wrap = true;
      };
    };
  };
}
