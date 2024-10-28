{ pkgs, ... }: {
  extraFiles = {
    "cheatsheet.txt".text = ''
      quickfix move backward through jump list | <C-o>
      quickfix move forward through jump list | <C-i>
    '';
  };
  extraPlugins = with pkgs.vimPlugins; [ cheatsheet-nvim ];
  extraConfigLua = ''
    require("cheatsheet").setup({
        bundled_cheatsheets = true,
        bundled_plugin_cheatsheets = true,
        telescope_mappings = {
            ['<CR>'] = require('cheatsheet.telescope.actions').select_or_execute,
            ['<A-CR>'] = require('cheatsheet.telescope.actions').select_or_fill_commandline,
            ['<C-Y>'] = require('cheatsheet.telescope.actions').copy_cheat_value,
        }
    })
  '';
}
