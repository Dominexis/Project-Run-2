## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 3
scoreboard players set #local kello.level.var 1
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
execute positioned ~16 ~2 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~24 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~18 ~11 ~5 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~17 ~5 ~16 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{state:1,rot_mode:0}}
execute positioned ~17 ~5 ~14 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~16.5 ~4.5 ~16.12 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~18.5 ~6.5 ~15.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~16.5 ~6.75 ~14.87 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~18.5 ~4.5 ~14.87 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:2,rot_mode:1,rot_speed:1,rundelay:12,invdelay:19},Rotation:[0.0f,0.0f]}

execute positioned ~22.5 ~3.0 ~22.87 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore","kello.entity.type.gear_0"],data:{variant:0,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~15.5 ~3.0 ~22.87 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore","kello.entity.type.gear_0"],data:{variant:0,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~21.5 ~3.25 ~23.25 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}

execute positioned ~25.5 ~2.62 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~25.5 ~4.5 ~17.0 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~24.87 ~4.37 ~9.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~24.75 ~3.5 ~10.0 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{variant:1,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}

execute positioned ~18.5 ~13.25 ~5.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~18.5 ~11.5 ~5.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~23.5 ~11.5 ~5.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~24.5 ~13.0 ~6.12 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~23.5 ~12.5 ~6.0 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=minecraft:marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0

# contraption 2

scoreboard players set #init kello.entity.checkpoint.id 4
scoreboard players set #init kello.decal.id 6

scoreboard players set #uninstantiate kello.value 1
execute positioned ~23 ~8 ~-17 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~20 ~13 ~-21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~16 ~9 ~-17 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~16.5 ~10.5 ~-15.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.rig_root","kello.entity.type.small_decwheel_gear","kello.decal","aj.decwheel.root","kello.decal.mech_spawn_point","kello.entity","kello.decal.selected","aj.decwheel.rig_entity","pr.ignore"],data:{state:2,rot_mode:1},Rotation:[-90.0f,0.0f]}
execute positioned ~16.12 ~10.5 ~-17.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:2,rot_mode:1,rot_speed:1,rundelay:11,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~16.0 ~8.75 ~-18.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:2,rot_mode:0,rot_speed:1,rundelay:12,invdelay:19},Rotation:[90.0f,0.0f]}

execute positioned ~20.5 ~14.12 ~-10.88 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:0,rot_speed:1,rundelay:18,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~20.5 ~14.12 ~-22.13 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=minecraft:marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0


# parkour

scoreboard players set #init kello.entity.checkpoint.id 4
scoreboard players set #init kello.decal.id 7

scoreboard players set #uninstantiate kello.value 1
execute positioned ~21 ~14 ~-11 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~22 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~16 ~3 ~1 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~17 ~3 ~-2 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~20 ~4 ~-9 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~24 ~7 ~-31 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~18 ~9 ~-31 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~15 ~11 ~-31 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~24 ~3 ~1 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~23 ~3 ~-2 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~25 ~7 ~-26 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~13 ~11 ~-36 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~20 ~3 ~-5 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~20 ~6 ~-26 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~21 ~8 ~-34 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~16 ~10 ~-35 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=minecraft:marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0





## DECO

execute positioned ~9.5 ~13.5 ~-27.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~18.5 ~12.5 ~-6.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[38.0f,0.0f]}
execute positioned ~22.5 ~10.0 ~12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~20.5 ~7.0 ~9.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~23.5 ~10.0 ~-7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~18.5 ~14.0 ~-26.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~14.5 ~17.0 ~-28.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~12.5 ~16.5 ~-30.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~12.5 ~16.5 ~-34.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~9.5 ~4.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~9.5 ~4.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~14.5 ~-0.5 ~8.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~14.5 ~0.5 ~-1.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~27.5 ~0.5 ~-18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~18.5 ~10.5 ~-37.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~27.5 ~-2.5 ~-2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~13.5 ~7.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~22.5 ~6.5 ~9.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~18.5 ~6.5 ~9.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~21.5 ~9.5 ~-7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~18.5 ~13.5 ~-24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~18.5 ~13.5 ~-28.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~14.5 ~16.5 ~-26.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~20.5 ~9.5 ~12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~25.5 ~9.5 ~-7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~22.0 ~13.0 ~0.0 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[11.0f,0.0f]}
execute positioned ~23.0 ~15.0 ~-3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[41.0f,0.0f]}
execute positioned ~21.5 ~17.0 ~-31.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[22.0f,0.0f]}
execute positioned ~23.0 ~15.0 ~-28.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[22.0f,0.0f]}
execute positioned ~18.5 ~12.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[43.0f,0.0f]}
execute positioned ~14.5 ~9.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[9.0f,0.0f]}
execute positioned ~15.5 ~11.0 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[31.0f,0.0f]}
execute positioned ~22.25 ~16.0 ~-14.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[45.0f,0.0f]}
execute positioned ~19.5 ~14.0 ~-18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[15.0f,0.0f]}
execute positioned ~20.0 ~10.5 ~-2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[33.0f,0.0f]}
execute positioned ~18.0 ~11.5 ~-15.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[34.0f,0.0f]}
execute positioned ~15.5 ~18.25 ~-34.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[44.0f,0.0f]}
execute positioned ~10.5 ~1.0 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~10.5 ~1.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:1,variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~13.5 ~4.0 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~22.5 ~17.5 ~-37.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:1,variant:2},Rotation:[-90.0f,0.0f]}

function kello:debug/decal/gen/queue







# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0
return 1