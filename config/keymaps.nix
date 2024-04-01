{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>pv";
      action = "<cmd>Explore<CR>";
      options.desc = "Open Netrw";
    }
    # Visual Block Motions
    # Select text and move with vi dirction keys
    {
      mode = [ "v" ];
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = [ "v" ];
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    {
      mode = [ "v" ];
      key = "L";
      action = "> gv";
    }
    {
      mode = [ "v" ];
      key = "H";
      action = "< gv";
    }
    # Vis Block Motions end

    {
      mode = [ "n" ];
      key = "J";
      action = "mzJ`z";
    }

    {
      mode = [ "n" ];
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = [ "n" ];
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = [ "n" ];
      key = "n";
      action = "nzzzv";
    }
    {
      mode = [ "n" ];
      key = "N";
      action = "Nzzzv";
    }

    # greatest remap ever
    {
      mode = [ "x" ];
      key = "<leader>p";
      action = ''[["_dP]]'';
    }

    # next greatest remap ever : asbjornHaland
    {
      mode = [ "n" "v" ];
      key = "<leader>y";
      action = ''[["+y]]'';
    }
    {
      mode = [ "n" ];
      key = "<leader>Y";
      action = ''[["+Y]]'';
    }

    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = ''[["_d]]'';
    }

    # This is going to get me cancelled
    {
      mode = [ "i" ];
      key = "<C-c>";
      action = "<Esc>";
    }

    {
      mode = [ "n" ];
      key = "Q";
      action = "<nop>";
    }
    {
      mode = [ "n" ];
      key = "<C-f>";
      action = "<cmd>silent !tmux neww tmux-sessionizer<CR>";
    }

    # format current buffer
    {
      mode = [ "n" ];
      key = "<leader>f";
      action = "<cmd>Format<CR>";
    }

    {
      mode = [ "n" ];
      key = "<C-k>";
      action = "<cmd>cnext<CR>zz";
    }
    {
      mode = [ "n" ];
      key = "<C-j>";
      action = "<cmd>cprev<CR>zz";
    }
    {
      mode = [ "n" ];
      key = "<leader>k";
      action = "<cmd>lnext<CR>zz";
    }
    {
      mode = [ "n" ];
      key = "<leader>j";
      action = "<cmd>lprev<CR>zz";
    }

    {
      mode = [ "n" ];
      key = "<leader>s";
      action = "[[:%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>]];";
      options.desc = "substitute word under cursor";
    }

    {
      mode = [ "n" ];
      key = "<leader>x";
      action = "<cmd>!chmod +x %<CR>";
      options = {
        desc = "Change the current buffer to execute";
        silent = true;
      };
    }

    {
      mode = [ "n" ];
      key = "<leader>h";
      action = "<cmd>nohlsearch<CR>";
      options.desc = "Turn highlights off";
    }

    # Git Fugitive
    {
      mode = [ "n" ];
      key = "<leader>gs";
      action = "<cmd>Git<CR>";
      options.desc = "Git";
    }

    # gitworktrees
    {
      mode = [ "n" ];
      key = "<leader>pw";
      action =
        "lua require('telescope').extensions.git_worktree.git_worktrees() ";
      options.desc = "Telescope switch git worktrees";
    }
  ];
}
