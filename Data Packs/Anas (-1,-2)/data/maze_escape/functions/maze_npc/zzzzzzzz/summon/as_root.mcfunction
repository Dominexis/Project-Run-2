execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.maze_npc.rig_loaded 1
scoreboard players operation @s aj.maze_npc.export_version = aj.maze_npc.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function maze_escape:maze_npc/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.maze_npc.variant.default aj.id run function maze_escape:maze_npc/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.maze_npc.animation.wave aj.id run function maze_escape:maze_npc/zzzzzzzz/animations/wave/apply_frame_as_root
execute if score #animation aj.i = $aj.maze_npc.animation.wave aj.id run scoreboard players operation @s aj.maze_npc.animation.wave.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.maze_npc.animation.talk aj.id run function maze_escape:maze_npc/zzzzzzzz/animations/talk/apply_frame_as_root
execute if score #animation aj.i = $aj.maze_npc.animation.talk aj.id run scoreboard players operation @s aj.maze_npc.animation.talk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.maze_npc.animation.idle aj.id run function maze_escape:maze_npc/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.maze_npc.animation.idle aj.id run scoreboard players operation @s aj.maze_npc.animation.idle.local_anim_time = #frame aj.i
execute at @s run function #maze_escape:maze_npc/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i