## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 3
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1






## START CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 3

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~1 ~22 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~1 ~18 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## START MECHANIC PHASE

# right

scoreboard players set #init kello.entity.checkpoint.id 3
scoreboard players set #init kello.decal.id 3

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-6 ~6 ~21 run function kello:entity/decal/contraption_controller/spawn_optional/main
execute positioned ~-6 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.1","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
execute positioned ~-8 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~-7 ~1 ~21 align xyz positioned ~.5 ~ ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.chapter_1_gate","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}


scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1


# tellraw @p [{"text":"Selected id to ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
execute as @e[type=marker,tag=kello.decal.temp_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0



# left

scoreboard players set #init kello.entity.checkpoint.id 3
scoreboard players set #init kello.decal.id 4

scoreboard players set #uninstantiate kello.value 1
execute positioned ~6 ~6 ~21 run function kello:entity/decal/contraption_controller/spawn_optional/main
execute positioned ~6 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.1","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~8 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
execute positioned ~7 ~1 ~21 align xyz positioned ~.5 ~ ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.chapter_1_gate","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}


scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1


# tellraw @p [{"text":"Selected id to ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
execute as @e[type=marker,tag=kello.decal.temp_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0






## DECO PHASE

# execute positioned ~-4 ~2 ~-33 run summon minecraft:item_display run function kello:plot/levels/start_room/billboard_music
# execute positioned ~-4 ~2 ~-33 positioned ~-.5 ~ ~-.5 summon minecraft:item_display run function kello:plot/levels/load/start_room/billboard_title
# execute positioned ~5 ~14 ~-39 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~15 ~-34 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~6 ~-25 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~-5 ~9 ~-27 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~0 ~11 ~-25 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~3 ~7 ~-37 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~6 ~-33 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~-3 ~11 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~-5 ~7 ~-29 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~5 ~4 ~-34 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~5 ~10 ~-27 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~6 ~5 ~-30 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~8 ~-35 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~6 ~5 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~4 ~-27 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~1 ~9 ~-39 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
# execute positioned ~-6 ~11 ~-33 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_small","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~0 ~5 ~-28 summon marker run data merge entity @s {Tags:["kello.decal.type.large_cogwheel_display","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~2 ~5 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.mellolily_pot_0","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~-2 ~5 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.mellolily_pot_0","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~2 ~1 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
# execute positioned ~2 ~1 ~-35 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
# execute positioned ~2 ~1 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}
# execute positioned ~-2 ~1 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~-2 ~1 ~-35 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~-2 ~1 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta_path","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~0 ~28 ~-36 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~3 ~28 ~-31 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~1 ~24 ~-29 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~26 ~-27 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-3 ~25 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~27 ~-29 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~5 ~27 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~6 ~24 ~-30 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~21 ~-37 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~4 ~23 ~-39 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~28 ~-34 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~21 ~-25 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-1 ~21 ~-37 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~6 ~16 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-3 ~20 ~-29 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~1 ~25 ~-39 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~3 ~28 ~-36 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~6 ~25 ~-27 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-3 ~27 ~-36 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~2 ~22 ~-28 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-3 ~17 ~-26 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~5 ~27 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~5 ~26 ~-29 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~2 ~27 ~-32 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-1 ~27 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_large","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~26 ~-31 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_large","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-5 ~26 ~-38 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_large","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~3 ~24 ~-34 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_large","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-3 ~14 ~-23 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~5 ~5 ~-23 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-6 ~4 ~-23 summon marker run data merge entity @s {Tags:["kello.decal.type.wall_mellolily_medium","kello.decal.temp_spawn_point"],Rotation:[-180.0f,0.0f]}
# execute positioned ~2 ~4 ~-21 summon marker run data merge entity @s {Tags:["kello.decal.type.mellolily_pot_0","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~-2 ~4 ~-21 summon marker run data merge entity @s {Tags:["kello.decal.type.mellolily_pot_0","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
# execute positioned ~6 ~24 ~-23 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_short","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~3 ~20 ~-23 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-4 ~27 ~-21 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_medium","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
# execute positioned ~-2 ~25 ~-22 summon marker run data merge entity @s {Tags:["kello.decal.type.melloflora_lantern_large","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}

# execute as @e[type=marker,tag=kello.decal.temp_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/decals/process_decals

# execute as @e[type=item_display,tag=kello.decal,tag=kello.ignore] at @s run function kello:debug/decal/util/spawn/verify/decals/init_decals






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0