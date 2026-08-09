-- Spring curve
hl.curve("rubber", {
    type = "spring",
    mass = 1,
    stiffness = 200,
    dampening = 24,
})

-- Layer animations
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 1,
    spring = "rubber",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1,
    spring = "rubber",
})

-- again, speed does fuckall.

-- SwayNC
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

-- Rofi
hl.layer_rule({
    match = { namespace = "rofi" },
    animation = "slide bottom",
})