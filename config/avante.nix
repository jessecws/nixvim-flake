{ pkgs, ... }:
# Configuration for Avante, RenderMarkdown, and related plugins
# Ensure necessary API keys are set as environment variables:
# - ANTHROPIC_API_KEY for Claude
# - GEMINI_API_KEY (or GOOGLE_API_KEY) for Gemini
# - OPENROUTER_API_KEY for OpenRouter
{
  extraPlugins = with pkgs.vimPlugins; [ img-clip-nvim ];
  extraConfigLua = ''
    require('img-clip').setup({ })
  '';
  plugins = {
    render-markdown = {
      enable = true;
      settings = {
        file_types = [ "markdown" "Avante" ];
        ft = [ "markdown" "Avante" ];
      };
    };
    avante = {
      enable = true;
      settings = {
        # Default provider for chat and suggestions
        provider = "gemini";
        auto_suggestions_provider = "gemini";
        # Tokenizer used for counting tokens (affects context window management)
        tokenizer = "tiktoken";
        system_prompt = ''
          You are an AI Programming Assistant integrated into Neovim.
          Your goal is to help the user write, understand, refactor, and debug code efficiently.
          - Prioritize correctness, clarity, and established best practices.
          - Provide concise explanations when needed.
          - Format code snippets using markdown code blocks.
          - If a request is ambiguous, ask for clarification.
        '';
        claude = {
          endpoint = "https://api.anthropic.com";
          max_tokens = 8000;
          model = "claude-3-7-sonnet-20250219";
          temperature = 0;
        };
        gemini = {
          max_tokens = 32768;
          model = "gemini-2.5-pro-exp-03-25";
          temperature = 0;
        };
        openrouter = {
          provider =
            "openai"; # Tells Avante to use the OpenAI request structure
          endpoint = "https://openrouter.ai/api/v1";
          # Define specific models available via your OpenRouter account
          # Example using Google's Gemini Pro 1.5 on OpenRouter
          model = "google/gemini-1.5-pro-latest";
          # You can add other models here too and select them in Avante
          # model = "anthropic/claude-3.5-sonnet";
          # model = "mistralai/mixtral-8x7b-instruct";
          max_tokens =
            4096; # Adjust based on the specific model's limit on OpenRouter
          temperature = 0;
          # You might need to pass headers if OpenRouter requires them beyond the API key
          # headers = {
          #   "HTTP-Referer" = "YOUR_SITE_URL"; # Example, check OpenRouter docs
          #   "X-Title" = "YOUR_APP_NAME"; # Example, check OpenRouter docs
          # };
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
  };
}
