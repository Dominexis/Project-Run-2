scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.checkpoint_flag.export_version dummy
scoreboard objectives add aj.checkpoint_flag.rig_loaded dummy
scoreboard objectives add aj.checkpoint_flag.animation.idle.local_anim_time dummy
scoreboard objectives add aj.checkpoint_flag.animation.flap.local_anim_time dummy
scoreboard objectives add aj.checkpoint_flag.animation.checkpoint.local_anim_time dummy
scoreboard objectives add aj.checkpoint_flag.animation.curl.local_anim_time dummy
scoreboard objectives add aj.checkpoint_flag.animation.idle.loop_mode dummy
scoreboard objectives add aj.checkpoint_flag.animation.flap.loop_mode dummy
scoreboard objectives add aj.checkpoint_flag.animation.checkpoint.loop_mode dummy
scoreboard objectives add aj.checkpoint_flag.animation.curl.loop_mode dummy
scoreboard players set $aj.checkpoint_flag.animation.idle aj.id 0
scoreboard players set $aj.checkpoint_flag.animation.flap aj.id 1
scoreboard players set $aj.checkpoint_flag.animation.checkpoint aj.id 2
scoreboard players set $aj.checkpoint_flag.animation.curl aj.id 3
scoreboard players set $aj.checkpoint_flag.variant.default aj.id 0
scoreboard players set $aj.checkpoint_flag.variant.atramentum aj.id 1
scoreboard players set $aj.checkpoint_flag.variant.final aj.id 2
scoreboard players set $aj.checkpoint_flag.variant.forestglide aj.id 3
scoreboard players set $aj.checkpoint_flag.variant.nebulae aj.id 4
scoreboard players set $aj.checkpoint_flag.variant.sundown aj.id 5
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.checkpoint_flag.export_version aj.i 295751645
scoreboard players reset * aj.checkpoint_flag.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.checkpoint_flag.root] run function animated_java:checkpoint_flag/zzzzzzzz/on_load
return 1