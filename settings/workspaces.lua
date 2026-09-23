--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/configuring/core/rules/

-- Example window rules that are useful

-- Noctalia Settings
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true, default_name = "web" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true, default_name = "code" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true, default_name = "chat" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true, default_name = "game" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true, default_name = "design" })

hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
