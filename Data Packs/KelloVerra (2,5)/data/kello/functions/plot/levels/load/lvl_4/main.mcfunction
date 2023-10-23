## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 4
scoreboard players set #local kello.level.var 0
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1






## CHECKPOINT PHASE PART 1

scoreboard players set #init kello.entity.checkpoint.id 7
scoreboard players set #init kello.player.void_y 321

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~36 ~-12 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~33 ~-15 rotated 0 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE PART 1


# parkour

scoreboard players set #init kello.entity.checkpoint.id 7
scoreboard players set #init kello.decal.id 11

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~38 ~2 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~0 ~33 ~-7 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-2 ~35 ~1 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~4 ~36 ~9 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-3 ~36 ~17 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~-3 ~36 ~26 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~03 ~36 ~26 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~3 ~32 ~-10 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~-3 ~34 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~36 ~5 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~36 ~13 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~36 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

execute positioned ~0 ~35 ~29 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{launch_power:1600},Rotation:[0.0f,-90.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0






## CHECKPOINT PHASE PART 2

scoreboard players set #init kello.entity.checkpoint.id 8
scoreboard players set #init kello.player.void_y 441

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~46 ~32 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~46 ~27 rotated 180 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE PART 2


# contraption

scoreboard players set #init kello.entity.checkpoint.id 8
scoreboard players set #init kello.decal.id 12

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~55 ~0 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~5 ~46 ~29 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:0,rot_mode:1}}
execute positioned ~5 ~48 ~29 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:1,rot_mode:0}}
execute positioned ~5 ~50 ~29 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:2,rot_mode:1}}

execute positioned ~5.87 ~50.5 ~30.87 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~5.87 ~48.87 ~28.75 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~5.75 ~46.5 ~30.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:2,rot_mode:1,rot_speed:1,rundelay:10,invdelay:19},Rotation:[-90.0f,0.0f]}

execute positioned ~3 ~52 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~-3 ~52 ~9 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~3 ~52 ~3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~-3 ~52 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~3 ~52 ~-9 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}

execute positioned ~-3.5 ~52.5 ~15.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~52.5 ~15.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~-3.5 ~52.5 ~9.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~52.5 ~9.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}

execute positioned ~-3.5 ~52.5 ~3.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~0.75 ~53.12 ~4.12 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~52.5 ~3.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}

execute positioned ~4.5 ~52.5 ~-2.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~-3.5 ~52.5 ~-2.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.75 ~53.25 ~-1.88 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~53.37 ~-1.88 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.entity.type.gear_1","kello.decal.selected","pr.ignore"],data:{variant:1,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}

execute positioned ~-3.5 ~52.5 ~-8.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~52.5 ~-8.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~52.5 ~-8.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:7,state:0,rot_mode:0,rot_speed:1,rundelay:16,invdelay:18},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~52.5 ~-8.5 run summon marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:6,state:0,rot_mode:0,rot_speed:1,rundelay:16,invdelay:18},Rotation:[-180.0f,0.0f]}

execute positioned ~0 ~45 ~-13 align xyz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.gate","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{variant:0}}

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

scoreboard players set #init kello.entity.checkpoint.id 8
scoreboard players set #init kello.decal.id 13

scoreboard players set #uninstantiate kello.value 1
execute positioned ~1 ~50 ~28 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~-1 ~46 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0






## CHECKPOINT PHASE PART 3

scoreboard players set #init kello.entity.checkpoint.id 9
scoreboard players set #init kello.player.void_y 431

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~45 ~-18 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~45 ~-14 rotated 180 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE PART 3

scoreboard players set #uninstantiate kello.value 1

# scoreboard players set #rot_x kello.value 0
# scoreboard players set #rot_y kello.value -900
# scoreboard players set #launch_power kello.value 1650
# execute positioned ~0 ~45 ~-16 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~45 ~-16 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1650},Rotation:[0.0f,-90.0f]}

# scoreboard players set #rot_x kello.value 0
# scoreboard players set #rot_y kello.value -545
# scoreboard players set #launch_power kello.value 4825
# execute positioned ~0 ~56 ~-16 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~56 ~-16 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:4825},Rotation:[0.0f,-54.5f]}

# scoreboard players set #rot_x kello.value 1800
# scoreboard players set #rot_y kello.value -625
# scoreboard players set #launch_power kello.value 2925
# execute positioned ~0 ~56 ~30 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~56 ~30 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:2925},Rotation:[180.0f,-62.5f]}

# scoreboard players set #rot_x kello.value 1800
# scoreboard players set #rot_y kello.value -305
# scoreboard players set #launch_power kello.value 2575
# execute positioned ~0 ~68 ~7 align xyz positioned ~.5 ~.5 ~.5 summon marker run function kello:debug/decal/util/spawn/verify/mech/mark_launchpad
execute positioned ~0 ~68 ~7 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:2575},Rotation:[180.0f,-30.5f]}


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



## DECO PHASE

execute positioned ~-7.5 ~34.5 ~-29.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-7.5 ~34.5 ~-35.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~8.5 ~34.5 ~-35.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~8.5 ~34.5 ~-29.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~35.5 ~-22.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-2.5 ~35.5 ~-22.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.mellolily_pot.root","kello.decal.type.mellolily_pot","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~1.5 ~33.0 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~1.5 ~33.0 ~-23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~1.5 ~33.0 ~-20.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~33.0 ~-20.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~33.0 ~-23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~33.0 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~33.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~33.0 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~33.0 ~-31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~33.0 ~-33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~2.5 ~33.0 ~-30.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~33.0 ~-30.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~8.5 ~39.5 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~-7.5 ~40.5 ~-23.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-7.5 ~38.5 ~-28.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~39.5 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~38.5 ~-38.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~0.5 ~42.5 ~-19.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~33.0 ~-15.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~33.0 ~-15.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~42.25 ~-25.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[14.0f,0.0f]}
execute positioned ~5.5 ~41.5 ~-26.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[2.0f,0.0f]}
execute positioned ~3.25 ~43.5 ~-23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[35.0f,0.0f]}
execute positioned ~3.25 ~43.5 ~-23.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.exclude","kello.decal","aj.melloflora_lantern.bone","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[39.0f,0.0f]}
execute positioned ~-5.5 ~41.5 ~-28.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[11.0f,0.0f]}
execute positioned ~-3.5 ~43.5 ~-24.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[2.0f,0.0f]}
execute positioned ~0.5 ~59.75 ~-15.75 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[14.0f,0.0f]}
execute positioned ~2.5 ~62.0 ~-15.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[18.0f,0.0f]}
execute positioned ~-0.5 ~61.5 ~-16.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[38.0f,0.0f]}

execute positioned ~2.5 ~39.5 ~37.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~39.5 ~37.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~3.5 ~46.0 ~29.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~46.0 ~29.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~0.5 ~46.0 ~33.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.selected","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~49.5 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~2.5 ~49.5 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~49.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~4.5 ~49.5 ~32.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-3.5 ~49.5 ~32.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-3.5 ~49.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~59.5 ~31.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~2.5 ~59.5 ~31.5 run summon marker ~ ~ ~ {Tags:["kello.decal","kello.decal.type.mellobanner","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~48.5 ~-17.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~2.5 ~49.5 ~-17.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~56.5 ~-17.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~0.5 ~59.5 ~31.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.selected","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}

execute positioned ~-0.5 ~68.0 ~8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-0.5 ~68.0 ~5.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~68.0 ~5.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~1.5 ~68.0 ~8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~4.75 ~74.4 ~8.25 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[44.0f,0.0f]}
execute positioned ~0.5 ~76.5 ~4.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[43.0f,0.0f]}
execute positioned ~-3.5 ~75.5 ~6.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~75.5 ~10.75 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[30.0f,0.0f]}
execute positioned ~-2.5 ~74.5 ~8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[14.0f,0.0f]}
execute positioned ~2.5 ~73.5 ~31.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[12.0f,0.0f]}
execute positioned ~-0.5 ~72.5 ~29.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[20.0f,0.0f]}
execute positioned ~1.75 ~75.75 ~27.25 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[30.0f,0.0f]}
execute positioned ~0.5 ~69.0 ~30.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[8.0f,0.0f]}
execute positioned ~-2.0 ~73.5 ~31.75 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[31.0f,0.0f]}


function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0