## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 6
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1






## CHECKPOINT PHASE PART 1

scoreboard players set #init kello.entity.checkpoint.id 11
scoreboard players set #init kello.player.void_y 1061

scoreboard players set #uninstantiate kello.value 1
execute positioned ~4 ~111 ~-13 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~109 ~-17 rotated 0 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 1

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 11
scoreboard players set #init kello.decal.id 5672

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-1 ~112 ~-14 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-4 ~110 ~-13 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_decwheel_gear","kello.state.2","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[180.0f,0.0f]}
execute positioned ~-4 ~112 ~-13 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.3","kello.rot_mode.1","kello.decal.temp_spawn_point"],Rotation:[180.0f,0.0f]}

scoreboard players set #countdown kello.value 10
execute positioned ~0 ~114 ~-12 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 25
execute positioned ~0 ~114 ~-8 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 40
execute positioned ~0 ~114 ~-4 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 55
execute positioned ~0 ~114 ~0 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor

scoreboard players set #countdown kello.value 95
execute positioned ~0 ~114 ~10 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 110
execute positioned ~0 ~114 ~14 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor

scoreboard players set #rot_x kello.value 0
scoreboard players set #rot_y kello.value -900
scoreboard players set #launch_power kello.value 1650
execute positioned ~0 ~110 ~24 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

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



# parkour

scoreboard players set #init kello.entity.checkpoint.id 11
scoreboard players set #init kello.decal.id 1878

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-4 ~112 ~-3 run function kello:entity/decal/parkour_controller/spawn/main

execute positioned ~0 ~109 ~4 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~108 ~19 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,-90.0f]}

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






## CHECKPOINT PHASE PART 2

scoreboard players set #init kello.entity.checkpoint.id 12
scoreboard players set #init kello.player.void_y 1191

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~121 ~24 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~121 ~22 rotated 0 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 2

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 12
scoreboard players set #init kello.decal.id 743

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~125 ~15 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-5 ~124 ~20 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.3","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}

scoreboard players set #countdown kello.value 10
execute positioned ~-2 ~126 ~18 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 25
execute positioned ~0 ~126 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 40
execute positioned ~2 ~126 ~11 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 55
execute positioned ~0 ~126 ~8 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor

scoreboard players set #countdown kello.value 155
execute positioned ~0 ~126 ~-6 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 170
execute positioned ~-2 ~126 ~-9 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor

scoreboard players set #rot_x kello.value 0
scoreboard players set #rot_y kello.value -900
scoreboard players set #launch_power kello.value 2350
execute positioned ~0 ~120 ~-11 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

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

scoreboard players set #init kello.decal.id 587

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~127 ~3 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~4 ~124 ~5 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.3","kello.rot_mode.1","kello.decal.temp_spawn_point"],Rotation:[90.0f,0.0f]}

execute positioned ~0 ~127 ~4 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.temp_spawn_point"],Rotation:[0.0f,0.0f]}

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





## CHECKPOINT PHASE PART 3

scoreboard players set #init kello.entity.checkpoint.id 13
scoreboard players set #init kello.player.void_y 1332

scoreboard players set #uninstantiate kello.value 1
execute positioned ~2 ~142 ~-11 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~142 ~-9 rotated 0 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 3

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 13
scoreboard players set #init kello.decal.id 9537

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~125 ~15 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-5 ~124 ~20 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.3","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[-90.0f,0.0f]}

scoreboard players set #rot_x kello.value 0
scoreboard players set #rot_y kello.value -900
scoreboard players set #launch_power kello.value 1725
execute positioned ~0 ~134 ~-3 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~134 ~6 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~134 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

scoreboard players set #launch_power kello.value 2355
execute positioned ~0 ~134 ~24 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

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





## CHECKPOINT PHASE PART 4

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.player.void_y 1541

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-2 ~156 ~23 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~156 ~22 rotated 0 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 4

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.decal.id 2272

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~159 ~5 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~0 ~159 ~27 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.state.3","kello.rot_mode.0","kello.decal.temp_spawn_point"],Rotation:[180.0f,0.0f]}

scoreboard players set #countdown kello.value 20
execute positioned ~0 ~161 ~12 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 55
execute positioned ~0 ~161 ~3 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor
scoreboard players set #countdown kello.value 80
execute positioned ~0 ~161 ~-6 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_meteor

scoreboard players set #rot_x kello.value 0
scoreboard players set #rot_y kello.value -900
scoreboard players set #launch_power kello.value 1805
execute positioned ~0 ~155 ~-11 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

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


# parkour

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.decal.id 974

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-4 ~112 ~-3 run function kello:entity/decal/parkour_controller/spawn/main

execute positioned ~0 ~155 ~17 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,90.0f]}
execute positioned ~1 ~155 ~8 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,90.0f]}
execute positioned ~-1 ~155 ~-1 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.temp_spawn_point"],Rotation:[0.0f,90.0f]}

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