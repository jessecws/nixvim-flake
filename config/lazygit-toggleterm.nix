{
  extraConfigLua = ''
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end
  '';
  keymaps = [{
    mode = [ "n" ];
    key = "<leader>g";
    action = "<cmd>lua _lazygit_toggle()<CR>";
    options.desc = "Open Lazygit";
    options.silent = true;
    options.noremap = true;
  }];
}
