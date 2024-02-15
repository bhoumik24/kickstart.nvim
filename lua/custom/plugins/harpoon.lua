return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('harpoon'):setup({})
    end,
    keys = {
      {
        "<C-e>",
        function()
          local conf = require("telescope.config").values
          local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
              prompt_title = "Harpoon",
              finder = require("telescope.finders").new_table({
                results = file_paths,
              }),
              previewer = conf.file_previewer({}),
              sorter = conf.generic_sorter({}),
            }):find()
          end
          local harpoon = require('harpoon')
          toggle_telescope(harpoon:list())
        end,
        desc = "Open harpoon window"
      },
      {
        "<leader>i",
        function()
          require('harpoon'):list():append()
        end
      },
      {
        "<leader>1",
        function()
          require('harpoon'):list():select(1)
        end
      },
      {
        "<leader>2",
        function()
          require('harpoon'):list():select(2)
        end
      },
      {
        "<leader>3",
        function()
          require('harpoon'):list():select(3)
        end
      },
      {
        "<leader>4",
        function()
          require('harpoon'):list():select(4)
        end
      },
      {
        "<leader>5",
        function()
          require('harpoon'):list():select(5)
        end
      },
      {
        "<C-S-P>",
        function()
          require('harpoon'):list():prev()
        end
      },
      {
        "<C-S-N>",
        function()
          require('harpoon'):list():next()
        end
      },
    }
  }
}
