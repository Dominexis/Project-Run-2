scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.melloflora_lantern_sho.export_version dummy
scoreboard objectives add aj.melloflora_lantern_sho.rig_loaded dummy
scoreboard players set $aj.melloflora_lantern_sho.variant.default aj.id 0
scoreboard players set $aj.melloflora_lantern_sho.variant.blue aj.id 1
scoreboard players set $aj.melloflora_lantern_sho.variant.magenta aj.id 2
scoreboard players set $aj.melloflora_lantern_sho.variant.turquoise aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.melloflora_lantern_sho.export_version aj.i 1481112906
scoreboard players reset * aj.melloflora_lantern_sho.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.melloflora_lantern_sho.root] run function animated_java:melloflora_lantern_sho/zzzzzzzz/on_load