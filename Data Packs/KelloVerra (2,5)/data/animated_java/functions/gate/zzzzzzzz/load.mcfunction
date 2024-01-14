scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.gate.export_version dummy
scoreboard objectives add aj.gate.rig_loaded dummy
scoreboard objectives add aj.gate.animation.chp_1_open.local_anim_time dummy
scoreboard objectives add aj.gate.animation.chp_1_close.local_anim_time dummy
scoreboard objectives add aj.gate.animation.idle.local_anim_time dummy
scoreboard objectives add aj.gate.animation.chp_1_open.loop_mode dummy
scoreboard objectives add aj.gate.animation.chp_1_close.loop_mode dummy
scoreboard objectives add aj.gate.animation.idle.loop_mode dummy
scoreboard players set $aj.gate.animation.chp_1_open aj.id 0
scoreboard players set $aj.gate.animation.chp_1_close aj.id 1
scoreboard players set $aj.gate.animation.idle aj.id 2
scoreboard players set $aj.gate.variant.default aj.id 0
scoreboard players set $aj.gate.variant.chapter_1 aj.id 1
scoreboard players set $aj.gate.variant.loading aj.id 2
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.gate.export_version aj.i -1062101129
scoreboard players reset * aj.gate.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.gate.root] run function animated_java:gate/zzzzzzzz/on_load
return 1