local M = {}

M.general = {
  n = {
    ["Q"] = {
      "<cmd> q! <CR>",
      "Quit Anyways",
    },
    ["I"] = { '<cmd> lua require("custom.configs.toggler").toggle() <CR>', "Toggle Inverse" },
  },  
  i = {
    ["qq"] = {
      "<ESC>",
      "Quit Anyways",
    },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M