return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
    { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (root dir)", remap = true },
    { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = true,
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        always_show = {
          ".env",
        },
        never_show = {
          "thumbs.db",
          ".DS_Store",
          ".git",
          ".eslintcache",
        },
        hide_by_name = {
          "build",
          "node_modules",
        },
      },
    },
  },
}
