-- This is the configuration file for Hyprland. You can include other files here using Lua's require function.
-- As stated the Hyprland wiki is extremely well documented


-- IMPORTANT --
-- hyprland uses the hl "namespace" to refer to any hyprland related configuration
-- similar to how the standard library uses std:: in c++
-- REMEMBER -- 
-- This is a Lua file! Writing scripts here is easy, just write Lua!


-- DISPLAYS -- 
-- https://wiki.hypr.land/configuring/core/monitors/
-- This is where what monitors hyprland diplays on is configured

-- IMPORTANT --
-- The link to the wiki is provided for each section! Use it! The wiki is very intuitive.
-- I will pop in time to time to explain why to do certian things and emphasize really important points.
hl.monitor({
	output = "", -- <CHANGE HERE>
	mode = "highrr", -- <CHANGE HERE>
	position = "auto", -- <CHANGE HERE>
	scale = "auto",
})



-- VARIABLES --
-- https://wiki.hypr.land/hypr-ecosystem/dev/hyprlang/#defining-variables
-- Variables are important so that you dont have to reference repeated things more than once
-- Or, say you want to change your default browser, it is easy to just change the browser variable.
local mod = "SUPER" -- SWITCH HERE FOR DIFFERENT MOD KEY
local terminal = "kitty"
local filemanager = "pcmanfm"
local launcher = "hyprlauncher"
local browser = "firefox"



-- AUTOSTART PROGRAMS --
-- These are the programs that start when hyprland starts. 
-- You CAN put actual programs, eg Discord here... 
-- But I do not recommend it, as it slows down your system over times.
hl.on("hyprland.start", function () 
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
end)



-- ENVIRONMENT VARIABLES -- 
-- If you are not familiar with environment variables, I would recommend looking online to learn more about bash and your shell.
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct") -- For QT theming
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")



-- LOOK AND FEEL --
-- this a quite a broad topic so for documentation look around the "advanced options" tabs and use the seach bar.
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		col = {
			active_border = { colors = {"rgba(8839efee)", "rgba(8839efee)"}, angle = 45},
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = false, -- No corner drag
		allow_tearing = false, -- No screen tearing

		layout = "dwindle", -- Best for "normal" tiling
	},

	decoration = { -- Fancy stuff!
		-- Corners!
		rounding = 5,
		rounding_power = 2,

		-- Transparency
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = false, -- No anime wallpaper :C
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
	animations = {
		enabled = true, -- Disbale this and DIE
	},
})

-- ANIMATIONS AND CURVES -- 
-- if you disbaled these because of above text:
--    DEATH NOTE:    --
--  + YOU			 --
--  + YOUR FAMILY    --
-----------------------
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
-- Default Springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global",        enabled = true,  speed = 0.7,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 10,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 0.01, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- WORKSPACE RULES --
-- This is for if you want your workspaces for each sort of task
-- E.G. in workspace 1 only a text editor and firefox is allowed
-- E.G. Everything in workspace 3 is floating
-- Currently, out of default there is nothing here.



-- DWINDLE CONFIG -- 
hl.config({
	dwindle = {
		preserve_split = true, -- We prolly want this
	},
})



-- MASTER CONFIG --
hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	misc = {
		force_default_wallpaper = 0, -- No anime wallpaper :C
		disable_hyprland_logo = true, -- Disables logo
	},
})

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0.45,
		accel_profile = "flat", -- No mouse accel. You will like this.

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({ -- For touchpad gestures
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
-- The following is an example of configuring a specific device. This will only apply to one device,
-- find active device clients with hyprctl devices
--hl.device({
--    name        = "epic-mouse-v1",
--    sensitivity = -0.5,
--})



-- KEYBINDS --
-- This is the fun part!
-- Here we configure all of the keys to press for each command/action
-- With some basic Lua knowledge and reading, it should be self-explanitory, 
-- but here is the wiki (never hurt anyone)
-- https://wiki.hypr.land/configuring/core/binds/
hl.bind(mod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + E", hl.dsp.exec_cmd(filemanager))
hl.bind(mod .. " + F", hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + D", hl.dsp.exec_cmd(launcher))
hl.bind(mod .. " + SHIFT + A", hl.dsp.exec_cmd("steam"))

-- System Commands -- 
hl.bind(mod .. " + SHIFT + X", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())

hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + h",	   hl.dsp.focus({ direction = "left"}))
hl.bind(mod .. " + l",	   hl.dsp.focus({ direction = "right"}))
hl.bind(mod .. " + k",	   hl.dsp.focus({ direction = "down"}))
hl.bind(mod .. " + k",	   hl.dsp.focus({ direction = "up"}))
--Workspace Management
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end
--Special Workspace
hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" })) -- Workspace movement via scrolling
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" })) -- Workspace movement via scrolling
-- Window Resizing/Moving
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
-- Depends on: playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })



hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})
