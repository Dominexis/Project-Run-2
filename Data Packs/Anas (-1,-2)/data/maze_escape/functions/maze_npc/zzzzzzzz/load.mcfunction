scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.maze_npc.export_version dummy
scoreboard objectives add aj.maze_npc.rig_loaded dummy
scoreboard objectives add aj.maze_npc.animation.wave.local_anim_time dummy
scoreboard objectives add aj.maze_npc.animation.talk.local_anim_time dummy
scoreboard objectives add aj.maze_npc.animation.idle.local_anim_time dummy
scoreboard objectives add aj.maze_npc.animation.wave.loop_mode dummy
scoreboard objectives add aj.maze_npc.animation.talk.loop_mode dummy
scoreboard objectives add aj.maze_npc.animation.idle.loop_mode dummy
scoreboard players set $aj.maze_npc.animation.wave aj.id 0
scoreboard players set $aj.maze_npc.animation.talk aj.id 1
scoreboard players set $aj.maze_npc.animation.idle aj.id 2
scoreboard players set $aj.maze_npc.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.maze_npc.export_version aj.i -2397598
scoreboard players reset * aj.maze_npc.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.maze_npc.root] run function maze_escape:maze_npc/zzzzzzzz/on_load
return 1