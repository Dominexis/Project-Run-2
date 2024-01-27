scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.decwheel.export_version dummy
scoreboard objectives add aj.decwheel.rig_loaded dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_run.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_run.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_run.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_run.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_inv.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_inv.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_inv.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_inv.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_trn.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_trn.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_trn.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_trn.local_anim_time dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_run.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_run.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_run.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_run.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_inv.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_inv.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_inv.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_inv.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_small_trn.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_small_trn.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.clockwise_large_trn.loop_mode dummy
scoreboard objectives add aj.decwheel.animation.counter_clockwise_large_trn.loop_mode dummy
scoreboard players set $aj.decwheel.animation.clockwise_small aj.id 0
scoreboard players set $aj.decwheel.animation.counter_clockwise_small aj.id 1
scoreboard players set $aj.decwheel.animation.clockwise_large aj.id 2
scoreboard players set $aj.decwheel.animation.counter_clockwise_large aj.id 3
scoreboard players set $aj.decwheel.animation.counter_clockwise_small_run aj.id 4
scoreboard players set $aj.decwheel.animation.clockwise_small_run aj.id 5
scoreboard players set $aj.decwheel.animation.counter_clockwise_large_run aj.id 6
scoreboard players set $aj.decwheel.animation.clockwise_large_run aj.id 7
scoreboard players set $aj.decwheel.animation.counter_clockwise_small_inv aj.id 8
scoreboard players set $aj.decwheel.animation.clockwise_small_inv aj.id 9
scoreboard players set $aj.decwheel.animation.counter_clockwise_large_inv aj.id 10
scoreboard players set $aj.decwheel.animation.clockwise_large_inv aj.id 11
scoreboard players set $aj.decwheel.animation.clockwise_small_trn aj.id 12
scoreboard players set $aj.decwheel.animation.counter_clockwise_small_trn aj.id 13
scoreboard players set $aj.decwheel.animation.clockwise_large_trn aj.id 14
scoreboard players set $aj.decwheel.animation.counter_clockwise_large_trn aj.id 15
scoreboard players set $aj.decwheel.variant.default aj.id 0
scoreboard players set $aj.decwheel.variant.air aj.id 1
scoreboard players set $aj.decwheel.variant.large aj.id 2
scoreboard players set $aj.decwheel.variant.large_fixed aj.id 3
scoreboard players set $aj.decwheel.variant.large_gear aj.id 4
scoreboard players set $aj.decwheel.variant.large_shaft aj.id 5
scoreboard players set $aj.decwheel.variant.large1 aj.id 6
scoreboard players set $aj.decwheel.variant.small aj.id 7
scoreboard players set $aj.decwheel.variant.small_fixed aj.id 8
scoreboard players set $aj.decwheel.variant.small_gear aj.id 9
scoreboard players set $aj.decwheel.variant.small_shaft aj.id 10
scoreboard players set $aj.decwheel.variant.small1 aj.id 11
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.decwheel.export_version aj.i -725856648
scoreboard players reset * aj.decwheel.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.decwheel.root] run function animated_java:decwheel/zzzzzzzz/on_load
return 1