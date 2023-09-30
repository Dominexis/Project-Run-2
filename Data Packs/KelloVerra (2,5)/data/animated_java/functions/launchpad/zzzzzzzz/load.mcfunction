scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.launchpad.export_version dummy
scoreboard objectives add aj.launchpad.rig_loaded dummy
scoreboard objectives add aj.launchpad.animation.bloom.local_anim_time dummy
scoreboard objectives add aj.launchpad.animation.bud.local_anim_time dummy
scoreboard objectives add aj.launchpad.animation.shoot.local_anim_time dummy
scoreboard objectives add aj.launchpad.animation.cancel.local_anim_time dummy
scoreboard objectives add aj.launchpad.animation.bloom.loop_mode dummy
scoreboard objectives add aj.launchpad.animation.bud.loop_mode dummy
scoreboard objectives add aj.launchpad.animation.shoot.loop_mode dummy
scoreboard objectives add aj.launchpad.animation.cancel.loop_mode dummy
scoreboard players set $aj.launchpad.animation.bloom aj.id 0
scoreboard players set $aj.launchpad.animation.bud aj.id 1
scoreboard players set $aj.launchpad.animation.shoot aj.id 2
scoreboard players set $aj.launchpad.animation.cancel aj.id 3
scoreboard players set $aj.launchpad.variant.default aj.id 0
scoreboard players set $aj.launchpad.variant.blossom aj.id 1
scoreboard players set $aj.launchpad.variant.blossom_curl aj.id 2
scoreboard players set $aj.launchpad.variant.budded aj.id 3
scoreboard players set $aj.launchpad.variant.budded_curl aj.id 4
scoreboard players set $aj.launchpad.variant.low_lod aj.id 5
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.launchpad.export_version aj.i 1376232412
scoreboard players reset * aj.launchpad.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.launchpad.root] run function animated_java:launchpad/zzzzzzzz/on_load