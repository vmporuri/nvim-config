return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",

		-- Language Setup --
		"mfussenegger/nvim-dap-python",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		dapui.setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<leader>dc", function()
			if vim.fn.filereadable(".vscode/launch.json") then
				require("dap.ext.vscode").load_launchjs()
			end
			require("dap").continue()
		end)
		vim.keymap.set("n", "<leader>ds", dap.step_into)
		vim.keymap.set("n", "<leader>dn", dap.step_over)
		vim.keymap.set("n", "<leader>df", dap.step_out)
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
		vim.keymap.set("n", "<leader>dB", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end)
		vim.keymap.set("n", "<leader>dt", dapui.toggle)

		require("dap-python").setup("python3")
		require("dap-go").setup()
	end,
}
