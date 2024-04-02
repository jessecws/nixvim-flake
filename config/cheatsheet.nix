{ pkgs, ... }:
# To-do JH: get the cheatsheet.txt working
let
  cheatsheettxt = pkgs.writeText "cheatsheet.txt" ''
    Open cheatsheet | <leader>?
    Open cheatsheet in floating window | :CheatSheet!

    View mappings | :map [mapping]
    Set text width to {n} | :set tw={n}
  '';
in
{
  extraPlugins = with pkgs.vimPlugins; [ cheatsheet-nvim ];
  extraConfigLua = ''
    require("cheatsheet").setup({
        bundled_cheatsheets = true,
        bundled_plugin_cheatsheets = true,
        include_only_installed_plugins = true,
        telescope_mappings = {
            ['<CR>'] = require('cheatsheet.telescope.actions').select_or_execute,
            ['<A-CR>'] = require('cheatsheet.telescope.actions').select_or_fill_commandline,
            ['<C-Y>'] = require('cheatsheet.telescope.actions').copy_cheat_value,
            ['<C-E>'] = require('cheatsheet.telescope.actions').edit_user_cheatsheet,
        }
    })
  '';
}
