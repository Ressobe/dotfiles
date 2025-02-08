return {
  "mfussenegger/nvim-dap",
  optional = true,
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "js-debug-adapter")
      end,
    },
  },
  opts = function()
    local dap = require("dap")
    if not dap.adapters["netcoredbg"] then
      require("dap").adapters["netcoredbg"] = {
        type = "executable",
        command = vim.fn.exepath("netcoredbg"),
        args = { "--interpreter=vscode" },
        options = {
          detached = false,
        },
      }
    end

    for _, lang in ipairs({ "cs", "fsharp", "vb" }) do
      if not dap.configurations[lang] then
        dap.configurations[lang] = {
          {
            type = "netcoredbg",
            name = "Launch file",
            request = "launch",
            ---@diagnostic disable-next-line: redundant-parameter
            program = function()
              return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/", "file")
            end,
            cwd = "${workspaceFolder}",
          },
        }
      end
    end

    if not dap.adapters["pwa-node"] then
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          -- 💀 Make sure to update this path to point to your installation
          args = {
            LazyVim.get_pkg_path("js-debug-adapter", "/vscode-js-debug/out/src/vsDebugServer.js"),
            "${port}",
          },
        },
      }
    end
    if not dap.adapters["node"] then
      dap.adapters["node"] = function(cb, config)
        if config.type == "node" then
          config.type = "pwa-node"
        end
        local nativeAdapter = dap.adapters["pwa-node"]
        if type(nativeAdapter) == "function" then
          nativeAdapter(cb, config)
        else
          cb(nativeAdapter)
        end
      end
    end

    local js_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }

    local vscode = require("dap.ext.vscode")
    vscode.type_to_filetypes["node"] = js_filetypes
    vscode.type_to_filetypes["pwa-node"] = js_filetypes

    for _, language in ipairs(js_filetypes) do
      if not dap.configurations[language] then
        dap.configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
          },
        }
      end
    end
  end,
}
