## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 5
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1






## CHECKPOINT PHASE PART

scoreboard players set #init kello.entity.checkpoint.id 10
scoreboard players set #init kello.player.void_y 641

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-2 ~66 ~-16 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~66 ~-18 rotated 180 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART

scoreboard players set #uninstantiate kello.value 1

# scoreboard players set #rot_x kello.value 0
# scoreboard players set #rot_y kello.value -900
# scoreboard players set #launch_power kello.value 1650
execute positioned ~0 ~66 ~-24 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1650},Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~78 ~-24 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1650},Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~90 ~-24 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1650},Rotation:[0.0f,-90.0f]}
# scoreboard players set #launch_power kello.value 1525
execute positioned ~0 ~102 ~-24 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1525},Rotation:[0.0f,-90.0f]}


scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0



## DECO PHASE

execute positioned ~1.5 ~66.0 ~-20.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~66.0 ~-20.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-0.5 ~66.0 ~-17.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~66.0 ~-17.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~1.5 ~66.0 ~-14.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~66.0 ~-15.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~3.5 ~66.0 ~-26.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~66.0 ~-23.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~5.5 ~66.0 ~-23.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~66.0 ~-26.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~2.5 ~66.0 ~-23.5 summon marker run data merge entity @s {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~0.5 ~71.5 ~-28.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~71.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~71.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~81.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~81.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~0.5 ~86.5 ~-28.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-4.5 ~91.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~91.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~0.5 ~76.5 ~-28.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~0.5 ~81.5 ~-19.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~0.5 ~91.5 ~-19.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-4.5 ~86.5 ~-23.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~76.5 ~-27.5 summon marker run data merge entity @s {Tags:["aj.wall_mellolily.root","kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-0.5 ~83.5 ~-25.75 summon marker run data merge entity @s {Tags:["aj.comet_flake.root","kello.exclude","kello.decal.type.comet_flake","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[104.0f,0.0f]}
execute positioned ~1.5 ~99.5 ~-21.625 summon marker run data merge entity @s {Tags:["aj.comet_flake.root","kello.exclude","kello.decal.type.comet_flake","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-135.0f,0.0f]}



function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0