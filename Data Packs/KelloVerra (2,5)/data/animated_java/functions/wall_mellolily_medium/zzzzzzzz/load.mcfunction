scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.wall_mellolily_medium.export_version dummy
scoreboard objectives add aj.wall_mellolily_medium.rig_loaded dummy
scoreboard players set $aj.wall_mellolily_medium.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.wall_mellolily_medium.export_version aj.i -1758392332
scoreboard players reset * aj.wall_mellolily_medium.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.wall_mellolily_medium.root] run function animated_java:wall_mellolily_medium/zzzzzzzz/on_load