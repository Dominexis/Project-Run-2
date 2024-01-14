scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.animwheel.export_version dummy
scoreboard objectives add aj.animwheel.rig_loaded dummy
scoreboard objectives add aj.animwheel.animation.minor_cw.local_anim_time dummy
scoreboard objectives add aj.animwheel.animation.minor_ccw.local_anim_time dummy
scoreboard objectives add aj.animwheel.animation.minor_cw_f.local_anim_time dummy
scoreboard objectives add aj.animwheel.animation.minor_ccw_f.local_anim_time dummy
scoreboard objectives add aj.animwheel.animation.flip.local_anim_time dummy
scoreboard objectives add aj.animwheel.animation.minor_cw.loop_mode dummy
scoreboard objectives add aj.animwheel.animation.minor_ccw.loop_mode dummy
scoreboard objectives add aj.animwheel.animation.minor_cw_f.loop_mode dummy
scoreboard objectives add aj.animwheel.animation.minor_ccw_f.loop_mode dummy
scoreboard objectives add aj.animwheel.animation.flip.loop_mode dummy
scoreboard players set $aj.animwheel.animation.minor_cw aj.id 0
scoreboard players set $aj.animwheel.animation.minor_ccw aj.id 1
scoreboard players set $aj.animwheel.animation.minor_cw_f aj.id 2
scoreboard players set $aj.animwheel.animation.minor_ccw_f aj.id 3
scoreboard players set $aj.animwheel.animation.flip aj.id 4
scoreboard players set $aj.animwheel.variant.default aj.id 0
scoreboard players set $aj.animwheel.variant.diflyfan aj.id 1
scoreboard players set $aj.animwheel.variant.diflyfan1 aj.id 2
scoreboard players set $aj.animwheel.variant.diflyfan2 aj.id 3
scoreboard players set $aj.animwheel.variant.flyfan aj.id 4
scoreboard players set $aj.animwheel.variant.flyfan1 aj.id 5
scoreboard players set $aj.animwheel.variant.flyfan2 aj.id 6
scoreboard players set $aj.animwheel.variant.gear_0_fast aj.id 7
scoreboard players set $aj.animwheel.variant.gear_0_static aj.id 8
scoreboard players set $aj.animwheel.variant.gear_1_fast aj.id 9
scoreboard players set $aj.animwheel.variant.gear_1_static aj.id 10
scoreboard players set $aj.animwheel.variant.gear_2_fast aj.id 11
scoreboard players set $aj.animwheel.variant.gear_2_static aj.id 12
scoreboard players set $aj.animwheel.variant.gear_3_fast aj.id 13
scoreboard players set $aj.animwheel.variant.gear_3_static aj.id 14
scoreboard players set $aj.animwheel.variant.gear_4_fast aj.id 15
scoreboard players set $aj.animwheel.variant.gear_4_static aj.id 16
scoreboard players set $aj.animwheel.variant.gear_5_fast aj.id 17
scoreboard players set $aj.animwheel.variant.gear_5_static aj.id 18
scoreboard players set $aj.animwheel.variant.gear_6_fast aj.id 19
scoreboard players set $aj.animwheel.variant.gear_6_static aj.id 20
scoreboard players set $aj.animwheel.variant.gear_7_fast aj.id 21
scoreboard players set $aj.animwheel.variant.gear_7_static aj.id 22
scoreboard players set $aj.animwheel.variant.gear_8_fast aj.id 23
scoreboard players set $aj.animwheel.variant.gear_8_static aj.id 24
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.animwheel.export_version aj.i 308923069
scoreboard players reset * aj.animwheel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.animwheel.root] run function animated_java:animwheel/zzzzzzzz/on_load
return 1