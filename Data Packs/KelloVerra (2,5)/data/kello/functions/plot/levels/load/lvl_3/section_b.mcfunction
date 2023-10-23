## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 3
scoreboard players set #local kello.level.var 2
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1





## CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 5

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-12 ~4 ~18 run function kello:entity/checkpoint/spawn/main
execute positioned ~-10 ~1 ~21 rotated 90 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE


# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 5
scoreboard players set #init kello.decal.id 8

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-18 ~4 ~21 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-15 ~2 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~-18 ~6 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~-18.75 ~6.75 ~22.87 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:0,state:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-18.5 ~5.0 ~23.0 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-21.5 ~6.0 ~23.0 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-13.5 ~6.0 ~23.0 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-16.5 ~7.5 ~22.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:5,state:2,rot_mode:0,rot_speed:1,rundelay:19,invdelay:11},Rotation:[-180.0f,0.0f]}
# execute positioned ~-16.5 ~7.5 ~22.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:0,rot_mode:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-19.5 ~6.5 ~22.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:2,rot_mode:0},Rotation:[-180.0f,0.0f]}

execute positioned ~-21.5 ~3.0 ~22.87 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{state:0,variant:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-13.5 ~3.0 ~22.87 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{state:0,variant:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-11.5 ~12.5 ~-19.25 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,rot_mode:-1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~-11.13 ~11.5 ~-17.88 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,rot_mode:-1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0

# contraption 2

scoreboard players set #init kello.entity.checkpoint.id 5
scoreboard players set #init kello.decal.id 9

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-19 ~7 ~-2 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-22 ~13 ~2 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~-24 ~7 ~0 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~-23.88 ~5.5 ~-1.25 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.75 ~7.75 ~1.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.88 ~5.5 ~0.25 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_2","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:2,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.88 ~8.5 ~0.0 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}

execute positioned ~-21.5 ~14.5 ~4.0 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~14.5 ~-8.13 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~13.5 ~-6.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:6,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~13.5 ~2.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:6,state:0,rot_mode:0,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.38 ~13.5 ~-5.75 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:0,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0


# parkour

scoreboard players set #init kello.entity.checkpoint.id 5
scoreboard players set #init kello.decal.id 10

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-18 ~12 ~3 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~-21 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~4 ~7 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-16 ~7 ~-14 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~-15 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-21 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-15 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-22 ~5 ~-11 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-20 ~6 ~-14 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-16 ~11 ~-22 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~12 ~-31 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~-18 ~3 ~11 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~4 ~3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~6 ~-9 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~11 ~-27 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-21 ~12 ~-31 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~13 ~-34 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0



## DECO

execute positioned ~-11.5 ~4.0 ~18.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-9.5 ~1.0 ~20.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-9.5 ~1.0 ~22.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-22.5 ~10.5 ~9.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-22.5 ~10.5 ~13.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-14.5 ~10.5 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-14.5 ~10.5 ~3.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-14.5 ~10.5 ~-0.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-14.5 ~10.5 ~-12.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-14.5 ~10.5 ~-8.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-22.5 ~10.5 ~5.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-22.5 ~10.5 ~-10.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-22.5 ~10.5 ~-14.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-8.5 ~4.5 ~23.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-8.5 ~4.5 ~19.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-11.5 ~16.5 ~-34.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-11.5 ~16.5 ~-30.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-18.5 ~10.0 ~14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-17.5 ~11.0 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-17.5 ~11.0 ~-1.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-17.5 ~10.0 ~-4.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-18.5 ~12.0 ~8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-14.5 ~7.0 ~23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-20.5 ~7.0 ~23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered","aj.melloleta_path.root"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-25.5 ~4.5 ~21.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-25.5 ~4.5 ~9.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-25.5 ~8.5 ~15.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-10.5 ~11.5 ~28.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~-2.5 ~28.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~13.5 ~-37.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~-14.5 ~7.5 ~-36.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~-15.5 ~15.5 ~-37.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~-19.5 ~14.5 ~-17.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~-21.0 ~10.5 ~-24.5 run summon marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:1},Rotation:[133.0f,0.0f]}
execute positioned ~-7.5 ~13.5 ~19.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{level_variant:2,variant:2},Rotation:[0.0f,0.0f]}


function kello:debug/decal/gen/queue





# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0