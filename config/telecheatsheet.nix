{
  #To-do JH: replace runtime with notes and cheatsheets
  extraConfigLua = ''
    function grep_runtime_path()
      local runtime_paths = vim.split(vim.o.runtimepath, ',', true)
      require('telescope.builtin').live_grep({
        search_dirs = runtime_paths,
        -- You can add any other directories you want to include in the search:
      -- additional_search_dirs = { '/path/to/notes', '/path/to/cheatsheets' },
      })
    end
  '';
  keymaps = [{
    mode = [ "n" ];
    key = "<leader>gr";
    action = "<cmd>:lua grep_runtime_path()<CR>";
    options.desc = "Telescope Cheatsheets";
    options.silent = true;
    options.noremap = true;
  }];
}
