{

  plugins = { barbar = { enable = true; }; };
  keymaps = [
    # Move to previous/next
    {
      mode = [ "n" ];
      key = "<A-,>";
      action = "<Cmd>BufferPrevious<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-.>";
      action = "<Cmd>BufferNext<CR>";
    }
    # Re-order to previous/next
    {
      mode = [ "n" ];
      key = "<A-<>";
      action = "<Cmd>BufferMovePrevious<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A->>";
      action = "<Cmd>BufferMoveNext<CR>";
    }
    # Goto buffer in position...
    {
      mode = [ "n" ];
      key = "<A-1>";
      action = "<Cmd>BufferGoto 1<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-2>";
      action = "<Cmd>BufferGoto 2<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-3>";
      action = "<Cmd>BufferGoto 3<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-4>";
      action = "<Cmd>BufferGoto 4<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-5>";
      action = "<Cmd>BufferGoto 5<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-6>";
      action = "<Cmd>BufferGoto 6<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-7>";
      action = "<Cmd>BufferGoto 7<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-8>";
      action = "<Cmd>BufferGoto 8<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-9>";
      action = "<Cmd>BufferGoto 9<CR>";
    }
    {
      mode = [ "n" ];
      key = "<A-0>";
      action = "<Cmd>BufferLast<CR>";
    }
    # Pin/unpin buffer
    {
      mode = [ "n" ];
      key = "<A-p>";
      action = "<Cmd>BufferPin<CR>";
    }
    # Close buffer
    {
      mode = [ "n" ];
      key = "<A-c>";
      action = "<Cmd>BufferClose<CR>";
    }
    # Wipeout buffer
    #                 :BufferWipeout

    # Close commands
    #                 :BufferCloseAllButCurrent
    #                 :BufferCloseAllButPinned
    #                 :BufferCloseAllButCurrentOrPinned
    #                 :BufferCloseBuffersLeft
    #                 :BufferCloseBuffersRight
    # Magic buffer-picking mode
    {
      mode = [ "n" ];
      key = "<C-p>";
      action = "<Cmd>BufferPick<CR>";
    }
    # Sort automatically by...
    {
      mode = [ "n" ];
      key = "<Space>bb";
      action = "<Cmd>BufferOrderByBufferNumber<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Space>bd";
      action = "<Cmd>BufferOrderByDirectory<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Space>bl";
      action = "<Cmd>BufferOrderByLanguage<CR>";
    }
    {
      mode = [ "n" ];
      key = "<Space>bw";
      action = "<Cmd>BufferOrderByWindowNumber<CR>";
    }

    # Other:
    # :BarbarEnable - enables barbar (enabled by default)
    # :BarbarDisable - very bad command, should never be used

  ];
}
