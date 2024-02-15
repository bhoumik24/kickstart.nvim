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
        "<C-h>",
        function()
          require('harpoon'):list():select(1)
        end
      },
    }
  }
}
