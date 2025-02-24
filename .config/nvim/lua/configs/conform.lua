---@module "conform.init"
---@diagnostic disable-next-line: assign-type-mismatch
local conform = require "conform"

---@type conform.setupOpts
local options = {
  formatters_by_ft = {
    bash = { "shellcheck", "shfmt" },
    c = { "clang-format", lsp_format = "last" },
    cpp = { "clang-format", lsp_format = "last" },
    go = { "goimports", "gofmt" },
    javascript = { "stylelint", "prettierd", "eslint_d" },
    lua = { "stylua" },
    rust = { "rustfmt" },
    python = function(bufnr)
      if conform.get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,
    rust = { "rustfmt" },
    sh = { "shellcheck", "shfmt" },
    zsh = { "shellcheck", "beautysh" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_format = "fallback",
  },
}

return options
