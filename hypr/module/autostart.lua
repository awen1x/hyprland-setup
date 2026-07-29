hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprlock");
    hl.exec_cmd("waybar");
    hl.exec_cmd("awww-daemon");
    hl.exec_cmd("sleep 2 && discord --start-minimized");
    hl.exec_cmd("timeout 10 openrgb --startminimized");
    hl.exec_cmd("wl-paste --watch cliphist -db-path /tmp/cliphist-db store")
    --hl.exec_cmd("source ~/.cache/wal/colors.sh")
end)