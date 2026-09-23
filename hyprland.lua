local home = os.getenv("HOME")

package.path = package.path
  .. ";" .. home .. "/.config/hypr/?.lua"
  .. ";" .. home .. "/.config/hypr/?/init.lua"


require("settings.defaults")
require("settings.env")
require("settings.workspaces")
require("settings.monitors")
require("settings.looks")
require("settings.keybinds")
require("settings.input")
require("settings.misc")

-- For Noctalia Color templates
require("noctalia").apply_theme()
