## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 3
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1






## CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 4

scoreboard players set #uninstantiate kello.value 1
execute positioned ~13 ~4 ~24 run function kello:entity/checkpoint/spawn/main
execute positioned ~10 ~1 ~21 rotated -90 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE


# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 4
scoreboard players set #init kello.decal.id 5

scoreboard players set #uninstantiate kello.value 1
execute positioned ~21 ~7 ~17 run function kello:entity/decal/contraption_controller/spawn_optional/main
execute positioned ~16 ~2 ~22 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~24 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~24 ~11 ~5 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~17 ~5 ~16 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~17 ~5 ~14 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[180.0f,0.0f]}


scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.temp_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0

# contraption 2

scoreboard players set #init kello.entity.checkpoint.id 4
scoreboard players set #init kello.decal.id 6

scoreboard players set #uninstantiate kello.value 1
execute positioned ~23 ~8 ~-17 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~20 ~13 ~-21 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~16 ~9 ~-17 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.1","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.temp_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0


# parkour

scoreboard players set #init kello.entity.checkpoint.id 4
scoreboard players set #init kello.decal.id 7

scoreboard players set #uninstantiate kello.value 1
execute positioned ~21 ~14 ~-11 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~22 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~16 ~3 ~1 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~17 ~3 ~-2 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~20 ~4 ~-9 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~24 ~7 ~-31 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~18 ~9 ~-31 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~15 ~11 ~-31 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~24 ~3 ~1 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~23 ~3 ~-2 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~25 ~7 ~-26 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_decwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~13 ~11 ~-36 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~20 ~3 ~-5 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~20 ~6 ~-26 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~21 ~8 ~-34 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~16 ~10 ~-35 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 1

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