-- opts
local opt = vim.opt
local g = vim.g
local vc = vim.cmd
local vp = vim.api.nvim_exec

-- general
vim.o.termguicolors = true

-- settings IndentLine
g.indentLine_setColors = 0
g.indentLine_char      = '┆'

-- settings minimap
g.minimap_width = 10
g.minimap_auto_start = 1
g.minimap_auto_start_win_enter = 1

-- settings gitgutter
g.gitgutter_override_sign_column_highlight = 0
g.gitgutter_sign_added                     = '+'      -- " '┃' "
g.gitgutter_sign_modified                  = '~'      -- " '┃' "
g.gitgutter_sign_removed                   = '-'      -- " '┃' "
g.gitgutter_sign_removed_first_line        = '-'      -- " '┃' "
g.gitgutter_sign_modified_removed          = '~'      -- " '┃' "

-- colour scheme
vc [[colorscheme abyss]]
vc [[au BufWritePost ~/.config/nvim/*.{vim,lua} so $MYVIMRC]]

-- nvim-tree.lua
g.nvim_tree_quit_on_open = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_add_trailing = 0
g.nvim_tree_show_icons = {
  git = 0,
  folders = 0,
  files = 0,
}

vc ("autocmd Colorscheme * highlight NvimTreeNormal guibg=#101010")
vc ("autocmd Colorscheme * highlight NvimTreeFolderName guifg=#B8B8B8")
vc ("autocmd Colorscheme * highlight NvimTreeRootFolder guifg=#B8B8B8")
vc ("autocmd Colorscheme * highlight NvimTreeExecFile guifg=#B8B8B8")
vc ("autocmd Colorscheme * highlight NvimTreeNormal guifg=#B8B8B8")


require'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    update_to_buf_dir   = {
      enable = true,
      auto_open = true,
    },
    diagnostics = {
      enable = false,
      icons = {
        hint = "h",
        info = "i",
        warning = "w",
        error = "e",
      }
    },
    update_focused_file = {
      enable      = false,
      update_cwd  = false,
      ignore_list = {}
    },
    system_open = {
      cmd  = nil,
      args = {}
    },
    filters = {
      dotfiles = false,
      custom = {}
    },
    git = {
      enable = false,
      ignore = true,
      timeout = 500,
    },
    view = {
      width = 20,
      height = 30,
      side = 'left',
      allow_resize = true,
    },
  }

  require'nvim-tree'.setup()

