scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.cogwheel.export_version dummy
scoreboard objectives add aj.cogwheel.rig_loaded dummy
scoreboard objectives add aj.cogwheel.animation.small.local_anim_time dummy
scoreboard objectives add aj.cogwheel.animation.large.local_anim_time dummy
scoreboard objectives add aj.cogwheel.animation.large_ground.local_anim_time dummy
scoreboard objectives add aj.cogwheel.animation.small_ground.local_anim_time dummy
scoreboard objectives add aj.cogwheel.animation.small.loop_mode dummy
scoreboard objectives add aj.cogwheel.animation.large.loop_mode dummy
scoreboard objectives add aj.cogwheel.animation.large_ground.loop_mode dummy
scoreboard objectives add aj.cogwheel.animation.small_ground.loop_mode dummy
scoreboard players set $aj.cogwheel.animation.small aj.id 0
scoreboard players set $aj.cogwheel.animation.large aj.id 1
scoreboard players set $aj.cogwheel.animation.large_ground aj.id 2
scoreboard players set $aj.cogwheel.animation.small_ground aj.id 3
scoreboard players set $aj.cogwheel.variant.default aj.id 0
scoreboard players set $aj.cogwheel.variant.air aj.id 1
scoreboard players set $aj.cogwheel.variant.large aj.id 2
scoreboard players set $aj.cogwheel.variant.small aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.cogwheel.export_version aj.i 306904005
scoreboard players reset * aj.cogwheel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.cogwheel.root] run function animated_java:cogwheel/zzzzzzzz/on_load
return 1