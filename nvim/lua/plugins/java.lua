return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local jdtls = require("jdtls")

      -- This function runs when a Java file is opened
      local function on_attach(client, bufnr)
        -- Use LazyVim's keymap helper
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- Example: organise imports
        map("n", "<leader>co", jdtls.organize_imports, "Organise Imports")

        -- Example: extract variable/method
        map("v", "<leader>cev", jdtls.extract_variable, "Extract Variable")
        map("n", "<leader>cem", jdtls.extract_method, "Extract Method")

        -- You can add more custom Java-specific keymaps here
      end

      -- Find project root
      local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
      local root_dir = require("jdtls.setup").find_root(root_markers)

      local workspace_dir = vim.fn.stdpath("data") .. "/jdtls/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

      local config = {
        cmd = {
          "jdtls",
          "-data",
          workspace_dir,
        },
        root_dir = root_dir,
        on_attach = on_attach,
        settings = {
          java = {},
        },
      }

      -- Start or attach to the LSP
      jdtls.start_or_attach(config)
    end,
  },
}
