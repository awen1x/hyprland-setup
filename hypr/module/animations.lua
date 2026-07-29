hl.curve("rubber",{
    type = "spring", mass = 1, stiffness = 200, dampening = 24,
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 1,
    spring = "rubber",
    style = "slide top"
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1,
    spring = "rubber",
    style = "slide bottom"
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1,
    spring = "rubber",
    style = "slide"
})

-- speed literally does nothing why does it even exist lmao