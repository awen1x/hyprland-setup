Wal = dofile(os.getenv("HOME") .. "/.cache/wal/colors.lua")

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 20,

        border_size = 1,
        col = {
            active_border = "rgba(137, 180, 250, 0.18)",
            inactive_border = "rgba(137, 180, 250, 0.18)",
        },
        layout = dwindle,
        allow_tearing = true,
    },

    decoration = {
		rounding = 10,
        active_opacity = 0.9,
        inactive_opacity = 0.8,
		blur = {
			enabled = true,
			passes = 3,
			new_optimizations = true,
		},
		shadow = {
			enabled = false,
		},
	},
})

