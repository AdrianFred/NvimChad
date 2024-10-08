---@type NvPluginSpec
return {
  "L3MON4D3/LuaSnip",
  config = function()
    require "nvchad.configs.luasnip"

    local map = vim.keymap.set
    local ls = require "luasnip"
    local s = ls.snippet
    local t = ls.text_node

    ls.filetype_extend("javascriptreact", { "html" })
    ls.filetype_extend("typescriptreact", { "html" })
    ls.filetype_extend("vue", { "html" })

    -- Add custom snippets for Vue
    ls.add_snippets("vue", {
      -- Class snippet
      s("class", {
        t 'class=""',
        -- You can also add more placeholders here if needed
      }),

      -- Vue component snippet
      s("vcomp", {
        t {
          "<script setup>",
          "const loading = ref(false)",
          "</script>",
          "",
          "<template>",
          "  <div>",
          "  </div>",
          "</template>",
        },
      }),
    })

    require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/snippets/vscode" } }

    -- map({ "s", "i" }, "<C-y>", function()
    --   ls.expand()
    -- end, { desc = "Luasnip confirm snippet" })
    --
    -- map({ "s", "i" }, "<C-j>", function()
    --   ls.jump(-1)
    -- end, { desc = "Luasnip jump backward" })
    --
    -- map({ "s", "i" }, "<C-k>", function()
    --   ls.jump(1)
    -- end, { desc = "Luasnip jump forward" })

    vim.keymap.set({ "i", "s" }, "<C-e>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { desc = "Luasnip change active choice" })
  end,
}
