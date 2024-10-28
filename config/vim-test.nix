{ pkgs, ... }: {

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>Tt";
      action = ":TestNearest<CR>";
      # options.desc = "substitute word under cursor";
    }
    {
      mode = [ "n" ];
      key = "<leader>TT";
      action = ":TestFile<CR>";
      # options.desc = "substitute word under cursor";
    }
    {
      mode = [ "n" ];
      key = "<leader>Ta";
      action = ":TestSuite<CR>";
      # options.desc = "substitute word under cursor";
    }
    {
      mode = [ "n" ];
      key = "<leader>Tl";
      action = ":TestLast<CR>";
      # options.desc = "substitute word under cursor";
    }
    {
      mode = [ "n" ];
      key = "<leader>Tg";
      action = ":TestVisit<CR>";
      # options.desc = "substitute word under cursor";
    }
  ];

  extraPlugins = with pkgs.vimPlugins; [ vim-test vimux ];
  extraConfigLua = ''
    vim.cmd("let test#strategy = 'vimux'")
  '';
}
