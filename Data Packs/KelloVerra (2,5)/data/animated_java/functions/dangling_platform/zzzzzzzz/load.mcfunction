scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.dangling_platform.export_version dummy
scoreboard objectives add aj.dangling_platform.rig_loaded dummy
scoreboard objectives add aj.dangling_platform.animation.impact.local_anim_time dummy
scoreboard objectives add aj.dangling_platform.animation.impact.loop_mode dummy
scoreboard players set $aj.dangling_platform.animation.impact aj.id 0
scoreboard players set $aj.dangling_platform.variant.default aj.id 0
scoreboard players set $aj.dangling_platform.variant.fast aj.id 1
scoreboard players set $aj.dangling_platform.variant.slow aj.id 2
scoreboard players set $aj.dangling_platform.variant.static aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.dangling_platform.export_version aj.i 738436258
scoreboard players reset * aj.dangling_platform.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.dangling_platform.root] run function animated_java:dangling_platform/zzzzzzzz/on_load