## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 1
scoreboard players set #local kello.level.var 0
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1







## CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 1
scoreboard players set #init kello.player.void_y 2

scoreboard players set #uninstantiate kello.value 1
execute positioned ~2 ~1 ~-37 run function kello:entity/checkpoint/spawn/main
execute positioned ~ ~1 ~-37 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## LOADING MECHANIC PHASE

scoreboard players set #init kello.decal.id 1589
scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~7 ~-38 run function kello:entity/decal/loading_controller/spawn/main
execute positioned ~0 ~1 ~-40 align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.gate","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{variant:1}}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1
scoreboard players set #spawn_persistent kello.value 1


# tellraw @p [{"text":"Selected id to ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0






## MECHANIC PHASE

# scoreboard players set #init kello.entity.checkpoint.id 1
scoreboard players set #init kello.decal.id 1

scoreboard players set #uninstantiate kello.value 1
# execute positioned ~-2 ~10 ~-20 run summon marker ~ ~ ~ {Tags:["kello.entity.type.decal_contraption_controller","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~-2 ~10 ~-20 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-1 ~10 ~-20 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:0}}
execute positioned ~ ~10 ~-20 align xyz positioned ~.75 ~.75 ~.95 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:1,rot_speed:1,rundelay:8,invdelay:19,variant:8}}
execute positioned ~2 ~8 ~-20 align xyz positioned ~.25 ~.5 ~.95 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19,variant:3}}
execute positioned ~-2 ~9 ~-20 align xyz positioned ~1.125 ~-1.75 ~.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19,variant:4,brightness:{sky:0,block:2}}}
execute positioned ~ ~9 ~-20 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1}}
execute positioned ~1 ~8 ~-20 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~-1 ~8 ~-20 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~0 ~1 ~-19 align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.gate","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{variant:0}}

# scoreboard players set #rot_x kello.value 0
# scoreboard players set #rot_y kello.value -900
# scoreboard players set #launch_power kello.value 1750
# execute positioned ~0 ~20 ~-33 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1
scoreboard players set #spawn_persistent kello.value 1


# tellraw @p [{"text":"Selected id to ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0




## CHECKPOINT 2 PHASE

scoreboard players set #init kello.entity.checkpoint.id 96461
scoreboard players set #init kello.player.void_y 181


scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~20 ~-33 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1750},Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~22 ~-38 run function kello:entity/checkpoint/spawn/main
execute positioned ~-5 ~21 ~-33 rotated -90 -45 run function kello:entity/checkpoint/spawn/spawn_mark
execute positioned ~5 ~21 ~-33 rotated 90 -45 run function kello:entity/checkpoint/spawn/spawn_mark


scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1
scoreboard players set #spawn_persistent kello.value 1


# tellraw @p [{"text":"Selected id to ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0



## DECO PHASE

execute positioned ~.5 ~.5 ~.5 positioned ~-4 ~2 ~-33 positioned ~-.5 ~ ~-.5 summon minecraft:item_display run function kello:plot/levels/load/start_room/billboard_title
execute positioned ~.5 ~.5 ~.5 positioned ~4.86 ~4.5 ~-25.46 positioned ~-0.375 ~.25 ~.5 summon minecraft:item_display run function kello:plot/levels/load/start_room/billboard_music

execute positioned ~.5 ~5 ~-27.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.large_cogwheel_display","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f]}

execute positioned ~5.5 ~5.5 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~9.5 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~9.5 ~-28.05 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~1.5 ~12.5 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~3.5 ~8.5 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-5.5 ~6.25 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-5.5 ~9.5 ~-34.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~0.5 ~14.75 ~-24.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[8.0f,0.0f]}
execute positioned ~0.37 ~15.25 ~-28.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[1.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~-36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~-36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~27.25 ~-28.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[29.0f,0.0f]}
execute positioned ~3.5 ~26.5 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[25.0f,0.0f]}
execute positioned ~-1.5 ~28.0 ~-36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[24.0f,0.0f]}
execute positioned ~-3.5 ~28.0 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[14.0f,0.0f]}
execute positioned ~-0.5 ~28.5 ~-27.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[14.0f,0.0f]}
execute positioned ~1.5 ~24.0 ~-36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[43.0f,0.0f]}
execute positioned ~3.5 ~18.75 ~-25.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[26.0f,0.0f]}
execute positioned ~0.5 ~18.0 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[5.0f,0.0f]}
execute positioned ~2.5 ~18.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~18.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~0.5 ~18.0 ~-34.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-5.5 ~6.5 ~-22.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~13.5 ~-21.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[28.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~-21.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~-21.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-2.25 ~21.0 ~-22.0 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[24.0f,0.0f]}

execute positioned ~2.5 ~4.5 ~-20.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily_pot","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~4.5 ~-20.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily_pot","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}

function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #level_creation_mode kello.value 0