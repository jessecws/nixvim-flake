{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ img-clip-nvim ];
  extraConfigLua = ''
    require('img-clip').setup({ })
  '';
  plugins.avante = {
    enable = true;
    settings = {
      auto_suggestions_provider = "claude";
      tokenizer = "tiktoken";
      system_prompt = ''
        You are an excellent programming expert.
      '';
      claude = {
        endpoint = "https://api.anthropic.com";
        max_tokens = 8000;
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
      behaviour = {
        auto_suggestions = false;
        auto_set_highlight_group = true;
        auto_set_keymaps = true;
        auto_apply_diff_after_generation = false;
        support_paste_from_clipboard = false;
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
        width = 40;
        wrap = true;
      };
    };
  };
}
