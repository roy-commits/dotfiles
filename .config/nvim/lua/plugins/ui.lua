---@type LazySpec
return {
  { -- Breadcrumbs
    "Bekaboo/dropbar.nvim",
    lazy = false,
    -- Optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },
  { -- Set consistent terminal background color with theme
    "typicode/bg.nvim",
    lazy = false,
  },
}
