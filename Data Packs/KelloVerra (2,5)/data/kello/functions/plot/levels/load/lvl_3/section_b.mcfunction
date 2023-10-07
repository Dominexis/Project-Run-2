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
execute positioned ~-15 ~2 ~22 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~-18 ~6 ~22 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~-18.75 ~6.75 ~22.87 summon marker run data merge entity @s {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:0,state:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-18.5 ~5.0 ~23.0 summon marker run data merge entity @s {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-21.5 ~6.0 ~23.0 summon marker run data merge entity @s {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-13.5 ~6.0 ~23.0 summon marker run data merge entity @s {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.decal.type.animwheel","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-16.5 ~7.5 ~22.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:0,rot_mode:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-19.5 ~6.5 ~22.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:2,rot_mode:0},Rotation:[-180.0f,0.0f]}

execute positioned ~-21.5 ~3.0 ~22.87 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{state:0,variant:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-13.5 ~3.0 ~22.87 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{state:0,variant:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-11.5 ~12.5 ~-19.25 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,rot_mode:-1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~-11.13 ~11.5 ~-17.88 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,rot_mode:-1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}

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
execute positioned ~-22 ~13 ~2 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~-24 ~7 ~0 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~-23.88 ~5.5 ~-1.25 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.75 ~7.75 ~1.5 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.88 ~5.5 ~0.25 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_2","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:2,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-23.88 ~8.5 ~0.0 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}

execute positioned ~-21.5 ~14.5 ~4.0 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~14.5 ~-8.13 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~13.5 ~-6.5 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:6,state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.5 ~13.5 ~2.5 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:6,state:0,rot_mode:0,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}
execute positioned ~-21.38 ~13.5 ~-5.75 summon marker run data merge entity @s {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:0,rot_speed:1,rundelay:14,invdelay:17},Rotation:[90.0f,0.0f]}

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
execute positioned ~-21 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~4 ~7 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-16 ~7 ~-14 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~-15 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~2 ~18 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-21 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-15 ~3 ~15 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-22 ~5 ~-11 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-20 ~6 ~-14 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-16 ~11 ~-22 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~12 ~-31 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~-18 ~3 ~11 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~4 ~3 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~6 ~-9 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-18 ~11 ~-27 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-21 ~12 ~-31 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-17 ~13 ~-34 align xyz positioned ~.5 ~.5 ~.5 summon marker run data merge entity @s {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

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