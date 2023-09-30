scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.falling_platform.export_version dummy
scoreboard objectives add aj.falling_platform.rig_loaded dummy
scoreboard players set $aj.falling_platform.variant.default aj.id 0
scoreboard players set $aj.falling_platform.variant.air aj.id 1
scoreboard players set $aj.falling_platform.variant.chapter_1_0 aj.id 2
scoreboard players set $aj.falling_platform.variant.chapter_1_1 aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.falling_platform.export_version aj.i 55555416
scoreboard players reset * aj.falling_platform.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.falling_platform.root] run function animated_java:falling_platform/zzzzzzzz/on_load