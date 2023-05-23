# Project Run 2
Project Run 2 is a large-scale collaborative project consisting of sections linked end-to-end in a branching tree in a giant race/obstacle course.

# Plots
The map consists of a series of 80x80 chunk-aligned plots. Each plot will have a set of functions to hook into the core data pack. These functions can be anywhere in your data pack and have any name as they will be referenced explicitly by the core.

- `plot_on`: This function will run when a player enters your plot after there was no one in it. Use this to initialize your plot (create scoreboard objectives, spawn entities, prepare the blocks, etc.).
- `plot_off`: This function will run when the last player leaves your plot, leaving it empty. Use this to completely reset your plot (remove laggy entities, return blocks to the way they were originally, etc.).
- `tick_plot`: This function will run every tick while there are players in your plot.
- `enter`: This function will run as a player who enters your plot. This also runs as players that log into your plot.
- `exit`: This function will run as a player who exits your plot. Make sure you remove any tags, items, effects etc. from them when they leave. This runs as players when they log back in after having been in your plot.

While the functions `plot_on`, `plot_off`, and `tick` run, every entity (other than spectating players) will have the tag `pr.target`. Use this tag in every target selector (other than `@s`) to ensure that your plot does not interfere with any other plot. Avoid referencing other entities in the `enter` and `exit` functions.

The functions `plot_on`, `plot_off`, and `tick` execute at the center X,Z in your plot at Y=0. The `enter` and `exit` functions run at the player when the player moves from one plot to another. Do not modify anything around the player in these functions as you do not know where they are.

# Relative coordinates
Do not use absolute coordinates (e.g. `/setblock 1 2 3 dirt`). Instead, use relative coordinates (e.g. `/setblock ~1 ~2 ~3 dirt`). This is so that plots can be moved with minimal headaches.

# Checkpoints
The core handles checkpoints automatically. There is one checkpoint per plot which is at the entrance of the plot (for plots with multiple entrances, the checkpoint is at the entrance that they came through). A player will be sent back to their previous checkpoint if they die, relog, or run `/trigger checkpoint`. You can have your own checkpoints within your plot by running `/function pr:player/checkpoint/mark` as the player. This will setup a temporary checkpoint which will last as long as the player is in your plot. If they leave your plot or relog, the temporary checkpoint will be reset.

All entrances and exits on your plot must use the provided doorway templates, be aligned to the horizontal center of the walls, and be on one of the following Y values: 0, 16, 32, 48, 64.

# Command blocks
It is highly advised that you avoid using command blocks. You may use impulse command blocks sparingly, but do not use redstone clocks or ticking command blocks. Anything that ticks must be hooked into the core data pack. You may be asked to migrate your command blocks to a data pack if it causes issues such as lag.

# Scheduling functions
It is highly advised that you don't use the `/schedule` command. Even if this seems more convenient than using a scoreboard clock in your ticking function, it can cause unforeseen issues with losing execution context (which desynchronizes it from the main tick function), and if the plot turns off before the function executes.

# Endings
The endings are unique plots as they do not have exits. When a player reaches the end of your section, execute the function `pr:player/finish` as them to send them back to the lobby and record their time to the leaderboard. This means that these sections can have more customized endings.

# Advancements and leaderboards
Every plot has an advancement, and every ending has a leaderboard. The advancements have a name, a description, and an item icon. You can request a name, description, and icon for your plot's associated advancement. If your plot is an ending, the ending may use a name different than your plot, and may be decided by the project leads to reflect the entire branch rather than just your plot.

# Teams
Do not use teams for players as the core uses `pr.player` and `pr.spectator` to determine who is where, and to disable collision and friendly fire.

# World border
Do not modify the world border whatsoever. It is used to track time accurately for the leaderboard system.

# Game rules
Do not modify the game rules whatsoever. These are used to govern global behavior across the map and must stay the same at all times.

# Data pack requirements
Every contributor who uses a data pack will provide their own data pack. You will not be modifying the core but you will be adding your own data pack.

The namespaces in your data pack must be unique. They should contain your name and not be generic like `parkour` or `puzzle`. Similar namespaces must be used in scoreboard objective names, tags, bossbar IDs, storage IDs, etc.

Do not use the `#minecraft:tick` or `#minecraft:load` function tags. Instead, your functions will be hooked into the core and executed by it.

# Resource pack requirements
Any textures/models that you add to the resource pack must be added via custom item models. This means you cannot modify block models/textures, entity textures, UI textures, etc. All CustomModelData values must be 6-digits long. The first 3 digits will be a unique value to you, the last 3 digits will be used between your models. The first 3 digits acts as a sort of numeric namespace.

You may add custom sounds and translation strings. You may add custom fonts, but do not modify the default font.

The assets that you use must not radically change the vanilla style but must compliment it. Every asset you add will be reviewed.

# Quality of life triggers
Use `/trigger coords` to get the plot coordinates of where you're standing. This is useful for finding function references in the core which are plot-specific.

Use `/trigger warp` to teleport between the main build zone and the temporary build zone. The temporary build zone is where builders will put their stuff together before it is approved and integrated into the main build.

Use `/trigger plot` to teleport between the lobby minimap and the plots.

Use `/trigger relative` to get your relative coordinates to the plot's origin.

# Player motion system
You can apply motion to the player using scoreboards through the player launch functions from the Nexus. This is the closest we have to a true `/motion` command until Mojang actually adds it.

`/function pr:player/launch/apply/vector`: Assign these fakeplayer scores, which represent a motion vector scaled up 1000 times:
- `#entity_mot_x pr.value`
- `#entity_mot_y pr.value`
- `#entity_mot_z pr.value`

Then run the function as the player to apply motion to them.

`/function pr:player/launch/apply/gimbal`: Assign these fakeplayer scores, which represent angles scaled up 10 times and a magnitude scalar scaled up 1000 times:
- `#entity_yaw pr.value`
- `#entity_pitch pr.value`
- `#entity_mot pr.value`
Then run the function as the player to apply motion to them.

# Moving plots between zones
On the server, everyone is building in the temp build zone (65536 blocks to the east of 0,0). Once the plots are done, they will be moved to the main build zone at 0,0. The functions `/function pr:plot/move/to_main` and `/function pr:plot/move/to_temp` can be used to move plots between the zones.

When you are testing your plot's data pack in singleplayer, you can bring your plot into its natural position via a world download which you can request, then you can run one of these functions to bring your plot into its intended position. Running the function will cause a lagspike of about 5-10 seconds, and is irreversible without a backup of the world, so use with caution!

Do not, I repeat, DO NOT run these functions on the server. Moving plots will be handled by the project leads.