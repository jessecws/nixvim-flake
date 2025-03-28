# my NixVim config

This is a work in progress.

## To-do

- [ ] update keymaps for vim-fugitive

## Keymaps

**From `config/barbar.nix`:**

- `n` `<A-,>`: `<Cmd>BufferPrevious<CR>`
- `n` `<A-.>`: `<Cmd>BufferNext<CR>`
- `n` `<A-<` : `<Cmd>BufferMovePrevious<CR>`
- `n` `<A->>`: `<Cmd>BufferMoveNext<CR>`
- `n` `<A-1>`: `<Cmd>BufferGoto 1<CR>`
- `n` `<A-2>`: `<Cmd>BufferGoto 2<CR>`
- `n` `<A-3>`: `<Cmd>BufferGoto 3<CR>`
- `n` `<A-4>`: `<Cmd>BufferGoto 4<CR>`
- `n` `<A-5>`: `<Cmd>BufferGoto 5<CR>`
- `n` `<A-6>`: `<Cmd>BufferGoto 6<CR>`
- `n` `<A-7>`: `<Cmd>BufferGoto 7<CR>`
- `n` `<A-8>`: `<Cmd>BufferGoto 8<CR>`
- `n` `<A-9>`: `<Cmd>BufferGoto 9<CR>`
- `n` `<A-0>`: `<Cmd>BufferLast<CR>`
- `n` `<A-p>`: `<Cmd>BufferPin<CR>`
- `n` `<A-c>`: `<Cmd>BufferClose<CR>`
- `n` `<C-p>`: `<Cmd>BufferPick<CR>`
- `n` `<Space>bb`: `<Cmd>BufferOrderByBufferNumber<CR>`
- `n` `<Space>bd`: `<Cmd>BufferOrderByDirectory<CR>`
- `n` `<Space>bl`: `<Cmd>BufferOrderByLanguage<CR>`
- `n` `<Space>bw`: `<Cmd>BufferOrderByWindowNumber<CR>`

**From `config/harpoon.nix`:**

- `n` `<leader>a`: (Harpoon addFile)
- `n` `<C-e>`: (Harpoon toggleQuickMenu)
- `n` `<C-f>`: (Harpoon navFile 1 / gotoTerminal 1) - **Potential Overlap with `keymaps.nix`**
- `n` `<C-d>`: (Harpoon navFile 2 / gotoTerminal 2) - **Potential Overlap with `keymaps.nix`**
- `n` `<C-s>`: (Harpoon navFile 3 / gotoTerminal 3)
- `n` `<C-a>`: (Harpoon navFile 4 / gotoTerminal 4)

**From `config/keymaps.nix`:**

- `v` `J`: `:m '>+1<CR>gv=gv`
- `v` `K`: `:m '<-2<CR>gv=gv`
- `v` `L`: `> gv`
- `v` `H`: `< gv`
- `n` `J`: `mzJ\`z`
- `n` `<C-d>`: `<C-d>zz` - **Potential Overlap with `harpoon.nix`**
- `n` `<C-u>`: `<C-u>zz`
- `n` `n`: `nzzzv`
- `n` `N`: `Nzzzv`
- `x` `<leader>p`: `[["_dP]]`
- `n, v` `<leader>y`: `[["+y]]`
- `n` `<leader>Y`: `[["+Y]]`
- `n, v` `<leader>d`: `[["_d]]`
- `n` `Q`: `<nop>`
- `n` `<C-f>`: `<cmd>silent !tmux neww tmux-sessionizer<CR>` - **Potential Overlap with `harpoon.nix`**
- `n` `<leader>f`: `<cmd>Format<CR>`
- `n` `<C-k>`: `<cmd>cnext<CR>zz`
- `n` `<C-j>`: `<cmd>cprev<CR>zz`
- `n` `<leader>k`: `<cmd>lnext<CR>zz` - **Potential Overlap with `lsp-servers.nix`**
- `n` `<leader>j`: `<cmd>lprev<CR>zz` - **Potential Overlap with `lsp-servers.nix`**
- `n` `<leader>s`: `[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]];` (Desc: substitute word under cursor)
- `n` `<leader>h`: `<cmd>nohlsearch<CR>` (Desc: Turn highlights off)
- `n` `<leader>gs`: `<cmd>Git<CR>` (Desc: Git)
- `n` `<leader>pw`: `lua require('telescope').extensions.git_worktree.git_worktrees()` (Desc: Telescope switch git worktrees)
- `n` `<leader>v`: `<cmd>execute "normal! \<C-v>"<CR>` (Desc: Enter Visual Block Mode)

**From `config/lazygit-toggleterm.nix`:**

- `n` `<leader>g`: `<cmd>lua _lazygit_toggle()<CR>` (Desc: Open Lazygit)

**From `config/lsp-servers.nix`:**

- `n` `<leader>j`: (LSP diagnostic goto_next) - **Potential Overlap with `keymaps.nix`**
- `n` `<leader>k`: (LSP diagnostic goto_prev) - **Potential Overlap with `keymaps.nix`**
- `n` `K`: (LSP hover)
- `n` `gD`: (LSP references, Desc: Go to global definition)
- `n` `gd`: (LSP definition, Desc: Go to definition)
- `n` `gi`: (LSP implementation, Desc: Go to implementation)
- `n` `gt`: (LSP type_definition, Desc: Go to type definition)
- `n` `<leader>ca`: (LSP code_action)

**From `config/oil.nix`:**

- `n` `-`: `:Oil --float<CR>` (Desc: Open parent directory)
- _(Note: `oil.nix` also sets `useDefaultKeymaps = true`, which imports Oil's defaults. The explicit mappings defined in `settings.keymaps` within `oil.nix` override some of those defaults)_
  - `n` `g?`: `actions.show_help`
  - `n` `<CR>`: `actions.select`
  - `n` `<C-\>`: `actions.select_vsplit`
  - `n` `<C-enter>`: `actions.select_split`
  - `n` `<C-t>`: `actions.select_tab`
  - `n` `<C-v>`: `actions.preview`
  - `n` `<C-c>`: `actions.close`
  - `n` `<C-r>`: `actions.refresh`
  - `n` `-`: `actions.parent` (This is overridden by the map outside the plugin settings)
  - `n` `_`: `actions.open_cwd`
  - `n` `` ` ``: `actions.cd`
  - `n` `~`: `actions.tcd`
  - `n` `gs`: `actions.change_sort`
  - `n` `gx`: `actions.open_external`
  - `n` `g.`: `actions.toggle_hidden`
  - `n` `q`: `actions.close`

**From `config/telecheatsheet.nix`:**

- `n` `<leader>gr`: `<cmd>:lua grep_runtime_path()<CR>` (Desc: Telescope Cheatsheets)

**From `config/telescope.nix`:**

- `n` `<leader>ps`: `<cmd>lua ProjectSearch()<CR>` (Desc: Project Search with Grep)
- `n` `<leader>pf`: (Telescope find_files, Desc: Find files in the current Project)
- `n` `<C-p>`: (Telescope git_files, Desc: Git Files) - **Potential Overlap with `barbar.nix`**
- `n` `<leader>pg`: (Telescope live_grep)
- `n` `<leader>fb`: (Telescope buffers)
- `n` `<leader>fh`: (Telescope help_tags)
- `n` `<leader>u`: (Telescope undo)
- `n` `<leader>r`: (Telescope keymaps, Desc: Telescope Keymaps)
- `i, n` `<C-q>`: (Telescope smart_send_to_qflist + open_qflist)

**From `config/trouble.nix`:**

- `n` `<leader>xx`: `<cmd>Trouble diagnostics toggle<cr>` (Desc: Diagnostics (Trouble))
- `n` `<leader>xX`: `<cmd>Trouble diagnostics toggle filter.buf=0<cr>` (Desc: Buffer Diagnostics (Trouble))

**From `config/vim-test.nix`:**

- `n` `<leader>Tt`: `:TestNearest<CR>`
- `n` `<leader>TT`: `:TestFile<CR>`
- `n` `<leader>Ta`: `:TestSuite<CR>`
- `n` `<leader>Tl`: `:TestLast<CR>`
- `n` `<leader>Tg`: `:TestVisit<CR>`

**Potential Overlaps Identified:**

- **`n` `<C-p>`:**
  - `barbar.nix`: `<Cmd>BufferPick<CR>`
  - `telescope.nix`: `git_files`
- **`n` `<C-f>`:**
  - `harpoon.nix`: `navFile 1 / gotoTerminal 1`
  - `keymaps.nix`: `<cmd>silent !tmux neww tmux-sessionizer<CR>`
- **`n` `<C-d>`:**
  - `harpoon.nix`: `navFile 2 / gotoTerminal 2`
  - `keymaps.nix`: `<C-d>zz` (Scroll down half page)
- **`n` `<leader>j>`:**
  - `keymaps.nix`: `<cmd>lprev<CR>zz` (Previous location list item)
  - `lsp-servers.nix`: `goto_next` (Next diagnostic)
- **`n` `<leader>k>`:**
  - `keymaps.nix`: `<cmd>lnext<CR>zz` (Next location list item)
  - `lsp-servers.nix`: `goto_prev` (Previous diagnostic)
