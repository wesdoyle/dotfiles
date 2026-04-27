-- Disable moving lines with Alt+j / Alt+k in normal and visual modes
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_mode["<A-j>"] = false
lvim.keys.visual_mode["<A-k>"] = false

-- Plugin configuration
lvim.plugins = {
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "rafi/awesome-vim-colorschemes",
  "shaunsingh/moonlight.nvim",
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 0.8,
        width = 84,
        height = 40,
        options = {
          number = false,
        }
      },
    }
  },
  {
    "folke/twilight.nvim",
    opts = {
      dimming = {
        alpha = 0.125, -- less is more
        color = { "Normal", "#ffffff" },
        term_bg = "#000000", -- if guibg=NONE, this will be used to calculate text color
        inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
      },
      context = 10,
      treesitter = true,
    }
  },

  -- Disable indent guides (optional)
  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
  },

  { "tpope/vim-projectionist" },

  -- Debug Adapter for Python
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
      local ok, dap_python = pcall(require, "dap-python")
      if ok then
        dap_python.setup(mason_path)
      else
        vim.notify("nvim-dap-python not found", vim.log.levels.WARN)
      end
    end,
  },

  -- Neotest core + Python + Vitest adapters
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
      "marilari88/neotest-vitest",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local ok, neotest = pcall(require, "neotest")
      if not ok then
        vim.notify("Failed to load neotest: " .. neotest, vim.log.levels.ERROR)
        return
      end

      local adapters = {}

      local ok_py, python = pcall(require, "neotest-python")
      if ok_py then
        table.insert(adapters, python({
          dap = {
            justMyCode = false,
            console = "integratedTerminal",
          },
          args = { "--log-level", "DEBUG", "--quiet" },
          runner = "pytest",
        }))
      end

      local ok_vitest, vitest = pcall(require, "neotest-vitest")
      if ok_vitest then
        table.insert(adapters, vitest({}))
      end

      neotest.setup({ adapters = adapters })
    end,
  },
}

-- Enable DAP
lvim.builtin.dap.active = true

-- Neotest key mappings
lvim.builtin.which_key.mappings["dm"] = {
  "<cmd>lua require('neotest').run.run()<cr>", "Test Method"
}
lvim.builtin.which_key.mappings["dM"] = {
  "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP"
}
lvim.builtin.which_key.mappings["df"] = {
  "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Test File"
}
lvim.builtin.which_key.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test File DAP"
}
lvim.builtin.which_key.mappings["dS"] = {
  "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary"
}
lvim.builtin.which_key.mappings["dQ"] = {
  "<cmd>lua require('dapui').close()<CR>", "Close DAP UI"
}

-- Python virtualenv chooser
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

vim.cmd([[
  augroup AutoTest
  autocmd!
  autocmd BufWritePost *.py lua require("neotest").run.run()
  augroup END
  ]])

require("neotest").setup({
  output = {
    enabled = true,
    open_on_run = "short", -- or "always"
  }
})

vim.g.projectionist_heuristics = {
  ["*.py"] = {
    ["*.py"] = {
      alternate = "test_{}.py",
      type = "source",
    },
    ["test_*.py"] = {
      alternate = "{}.py",
      type = "test",
    },
  },
}

-- leader tt to switch between tests and impl
vim.keymap.set("n", "<leader>da", ":A<CR>", { desc = "Toggle Test/Impl" })

lvim.builtin.which_key.mappings["T"] = {
    name = "Tabs",
    n = { ":tabnew<cr>", "New Tab" },
    c = { ":tabclose<cr>", "Close Tab" },
    o = { ":tabonly<cr>", "Only This Tab" },
    l = { ":tabnext<cr>", "Next Tab" },
    h = { ":tabprevious<cr>", "Previous Tab" },
}

vim.opt.wrap = true
vim.opt.linebreak = true
