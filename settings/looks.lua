-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/configuring/core/config-options/
hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,
  },

  decoration = {
    rounding = 20,
    rounding_power = 2,

    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = 0xee1a1a1a,
    },

    blur = {
      enabled = true,
      size = 3,
      passes = 2,
      vibrancy = 0.1696,
    },
  },
})

hl.curve( "spring_curve", { type = "spring", mass = 1, stiffness = 3000, dampening = 140 })
hl.animation({ leaf = "workspaces", enabled = true, speed = 0.2, spring = "spring_curve", style = "slidevert" })

-- For Noctalia Color templates
require("noctalia").apply_theme()
