scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.comet_flake.export_version dummy
scoreboard objectives add aj.comet_flake.rig_loaded dummy
scoreboard players set $aj.comet_flake.variant.default aj.id 0
scoreboard players set $aj.comet_flake.variant.large aj.id 1
scoreboard players set $aj.comet_flake.variant.medium aj.id 2
scoreboard players set $aj.comet_flake.variant.small aj.id 3
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.comet_flake.export_version aj.i 55947982
scoreboard players reset * aj.comet_flake.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.comet_flake.root] run function animated_java:comet_flake/zzzzzzzz/on_load