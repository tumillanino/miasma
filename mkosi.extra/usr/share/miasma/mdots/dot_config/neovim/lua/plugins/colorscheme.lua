return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        colors = {
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors)
          return {}
        end,
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "lotus",
        },
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
}

--return {
--  {
--    "ellisonleao/gruvbox.nvim",
--    priority = 1000,
--    config = function()
--      local transparent = true
--      local bg = "NONE"
--      local bg_dark = "#1d2021"
--      local bg_highlight = "#3c3836"
--      local bg_search = "#fabd2f"
--      local bg_visual = "#665c54"
--      local fg = "#ebdbb2"
--      local fg_dark = "#d5c4a1"
--      local fg_gutter = "#928374"
--      local border = "#d79921"
--
--      require("gruvbox").setup({
--        transparent_mode = transparent,
--        overrides = {
--          -- Set background to NONE for main elements
--          Normal = { bg = "NONE", fg = fg },
--          NormalFloat = { bg = transparent and "NONE" or bg_dark },
--          Visual = { bg = bg_visual },
--          Search = { bg = bg_search, fg = bg_dark },
--          StatusLine = { bg = bg_dark, fg = fg },
--          VertSplit = { fg = border },
--          LineNr = { fg = fg_gutter },
--          CursorLineNr = { fg = fg },
--          Pmenu = { bg = bg_dark, fg = fg },
--          PmenuSel = { bg = bg_highlight },
--          FloatBorder = { bg = transparent and "NONE" or bg_dark, fg = border },
--          NvimTreeWindowPicker = { bg = bg_dark, fg = fg_dark },
--
--          -- Additional highlight groups to ensure transparency
--          SignColumn = { bg = "NONE" },
--          StatusLineNC = { bg = "NONE" },
--          TabLine = { bg = "NONE" },
--          TabLineFill = { bg = "NONE" },
--        },
--      })
--
--      -- Load the colorscheme
--      vim.cmd([[colorscheme gruvbox]])
--    end,
--  },
--}
