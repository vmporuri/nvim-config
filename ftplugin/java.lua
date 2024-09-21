local config = {
	cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

local bundles = {
	vim.fn.glob(
		vim.fn.stdpath("data")
			.. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
		true
	),
}
vim.list_extend(
	bundles,
	vim.split(vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-test/extension/server/*.jar", true), "\n")
)
config["init_options"] = {
	bundles = bundles,
}

require("jdtls").start_or_attach(config)
