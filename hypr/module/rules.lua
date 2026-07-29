-- Layer rules
hl.layer_rule({
    match = { namespace = "swaync-control-center" },
    animation = "slide top",
    blur = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    match = { namespace = "swaync-notification-window" },
    animation = "slide top",
    blur = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    match = { namespace = "rofi" },
    animation = "slide bottom",
})

hl.layer_rule({
    match = { namespace = "gtk-layer-shell" },
    ignore_alpha = 0.5,
})


-- Window rules
hl.window_rule({
    match = { class = "firefox" },
    opacity = "1.0 override 0.5 override",
})

hl.window_rule({
    match = { class = "steam_app_[0-9]+" },
    opacity = "1.0 override 0.5 override",
})