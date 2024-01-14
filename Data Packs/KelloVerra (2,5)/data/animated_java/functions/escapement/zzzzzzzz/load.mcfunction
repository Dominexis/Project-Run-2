scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.escapement.export_version dummy
scoreboard objectives add aj.escapement.rig_loaded dummy
scoreboard objectives add aj.escapement.animation.close.local_anim_time dummy
scoreboard objectives add aj.escapement.animation.open.local_anim_time dummy
scoreboard objectives add aj.escapement.animation.player.local_anim_time dummy
scoreboard objectives add aj.escapement.animation.close.loop_mode dummy
scoreboard objectives add aj.escapement.animation.open.loop_mode dummy
scoreboard objectives add aj.escapement.animation.player.loop_mode dummy
scoreboard players set $aj.escapement.animation.close aj.id 0
scoreboard players set $aj.escapement.animation.open aj.id 1
scoreboard players set $aj.escapement.animation.player aj.id 2
scoreboard players set $aj.escapement.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.escapement.export_version aj.i -1522482487
scoreboard players reset * aj.escapement.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.escapement.root] run function animated_java:escapement/zzzzzzzz/on_load
return 1