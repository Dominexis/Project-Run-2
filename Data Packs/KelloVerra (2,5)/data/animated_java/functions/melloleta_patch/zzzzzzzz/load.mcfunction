scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.melloleta_patch.export_version dummy
scoreboard objectives add aj.melloleta_patch.rig_loaded dummy
scoreboard players set $aj.melloleta_patch.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.melloleta_patch.export_version aj.i 264081774
scoreboard players reset * aj.melloleta_patch.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.melloleta_patch.root] run function animated_java:melloleta_patch/zzzzzzzz/on_load