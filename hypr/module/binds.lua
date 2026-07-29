local mainMod = "SUPER"

hl.config({
    input = {
        kb_layout = "pt",
    },
})

-- general
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("rofi -show drun -show-icons"))
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(
    mainMod .. " + B",
    hl.dsp.exec_cmd("if pgrep -x waybar >/dev/null; then pkill -x waybar; else waybar & fi")
) -- waybar toggler
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("kitty -e yazi"))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist -db-path /tmp/cliphist-db list | rofi -dmenu -p \"Clipboard  : \" -theme ~/.config/rofi/themes/cliphist.rasi | cliphist -db-path /tmp/cliphist-db decode | wl-copy && wtype -M ctrl -k v -m ctrl"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("wlogout"))
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -z -m region -o ~/Pictures/screenshots/"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/.config/scripts/wallcycle"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/scripts/wallpaper-selector"))

--focus direction
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

--workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i })) --switch workspaces
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) --move window to workspace
end
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }))

-- move/resize windows
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--note: no media keys yet, I use openRGB and that fucks up with my keyboard's firmware anyways.