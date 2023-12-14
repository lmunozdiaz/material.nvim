vim.opt.background = "dark"
vim.g.colors_name = "material"

package.loaded["lush_theme.material"] = nil
require("lush")(require("lush_theme.material"))
