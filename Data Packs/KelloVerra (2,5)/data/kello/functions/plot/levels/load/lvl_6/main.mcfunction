## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 6
scoreboard players set #local kello.level.var 0
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
execute positioned ~-4 ~110 ~-13 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~-4 ~112 ~-13 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:3,rot_mode:1}}

execute positioned ~0 ~113 ~-12 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:10}}
execute positioned ~0 ~113 ~-8 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:25}}
execute positioned ~0 ~113 ~-4 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:40}}
execute positioned ~0 ~113 ~0 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:55}}

execute positioned ~0 ~113 ~10 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:95}}
execute positioned ~0 ~113 ~14 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:110}}

execute positioned ~0 ~110 ~24 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1650},Rotation:[0.0f,-90.0f]}

execute positioned ~-2.0 ~112.5 ~-12.0 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_3","kello.entity.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-3.5 ~113.5 ~-12.13 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_4","kello.entity.type.animwheel","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:18,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-3.5 ~108.5 ~-12.2 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_2","kello.entity.type.animwheel","pr.ignore"],data:{variant:2,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:18},Rotation:[0.0f,0.0f]}

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



# parkour

scoreboard players set #init kello.entity.checkpoint.id 11
scoreboard players set #init kello.decal.id 1878

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-4 ~112 ~-3 run function kello:entity/decal/parkour_controller/spawn/main

execute positioned ~0 ~109 ~4 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~108 ~19 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f]}

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






## CHECKPOINT PHASE PART 2

scoreboard players set #init kello.entity.checkpoint.id 12
scoreboard players set #init kello.player.void_y 1191

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~121 ~24 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~121 ~22 rotated 180 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 2

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 12
scoreboard players set #init kello.decal.id 743

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~125 ~15 run function kello:entity/decal/contraption_controller/spawn/main

execute positioned ~0.5 ~126.5 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:10}}
execute positioned ~0.5 ~126.5 ~14.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:25}}
execute positioned ~0.5 ~126.5 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:40}}

execute positioned ~4.5 ~124.5 ~21.02 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity.type.animwheel","pr.ignore"],data:{variant:8,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~123.5 ~20.77 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_3","kello.entity.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~122.5 ~21.0 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_3","kello.entity.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-180.0f,0.0f]}

execute positioned ~4.5 ~122.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","aj.decwheel.root","kello.decal.mech_spawn_point","aj.decwheel.rig_entity","pr.ignore"],data:{state:1,rot_mode:1},Rotation:[0.0f,0.0f]}

execute positioned ~4.5 ~120.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:0,rot_mode:0},Rotation:[0.0f,0.0f]}

execute positioned ~0.5 ~126.5 ~-5.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:155}}

execute positioned ~0 ~120 ~-11 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:2350},Rotation:[0.0f,-90.0f]}

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

scoreboard players set #init kello.decal.id 587

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~127 ~3 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~4 ~124 ~5 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:1,rot_mode:1}}

execute positioned ~0 ~127 ~4 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}

execute positioned ~4.87 ~125.0 ~7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.decal.mech_spawn_point","kello.entity.type.animwheel","pr.ignore"],data:{variant:7,state:0,rot_mode:1,rot_speed:1,rundelay:10,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~4.87 ~125.5 ~5.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.decal.mech_spawn_point","kello.entity.type.animwheel","pr.ignore"],data:{variant:5,state:1,rot_mode:0,rot_speed:1,rundelay:10,invdelay:19},Rotation:[-90.0f,0.0f]}

execute positioned ~4.5 ~123.5 ~6.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:0,rot_mode:0},Rotation:[90.0f,0.0f]}
execute positioned ~4.5 ~122.5 ~5.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point","pr.ignore"],data:{state:0,rot_mode:1},Rotation:[90.0f,0.0f]}
execute positioned ~4.87 ~121.0 ~6.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity.type.animwheel","pr.ignore"],data:{variant:8,state:2,rot_mode:0,rot_speed:1,rundelay:19,invdelay:18},Rotation:[-90.0f,0.0f]}

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

scoreboard players set #rot_x kello.value 0
scoreboard players set #rot_y kello.value -900
scoreboard players set #launch_power kello.value 1725
execute positioned ~0 ~134 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1725},Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~134 ~6 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1725},Rotation:[0.0f,-90.0f]}
execute positioned ~0 ~134 ~15 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1725},Rotation:[0.0f,-90.0f]}

scoreboard players set #launch_power kello.value 2355
execute positioned ~0 ~134 ~24 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:2355},Rotation:[0.0f,-90.0f]}

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





## CHECKPOINT PHASE PART 4

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.player.void_y 1541

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-2 ~156 ~23 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~156 ~22 rotated 180 0 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0





## MECHANIC PHASE PART 4

# contraption 1

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.decal.id 2272

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~159 ~5 run function kello:entity/decal/contraption_controller/spawn/main

execute positioned ~0 ~161 ~12 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:20}}
execute positioned ~0 ~161 ~3 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:60}}
execute positioned ~0 ~161 ~-6 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:85}}

execute positioned ~0 ~155 ~-11 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:2205},Rotation:[0.0f,-90.0f]}

execute positioned ~4.5 ~156.0 ~21.12 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_3","kello.entity.type.animwheel","pr.ignore"],data:{variant:3,state:2,rot_mode:0,rot_speed:1,rundelay:11,invdelay:18},Rotation:[-180.0f,0.0f]}

execute positioned ~4.5 ~157.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","aj.decwheel.root","kello.decal.mech_spawn_point","aj.decwheel.rig_entity","pr.ignore"],data:{state:1,rot_mode:1},Rotation:[0.0f,0.0f]}

execute positioned ~5.5 ~158.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","aj.decwheel.root","kello.decal.mech_spawn_point","aj.decwheel.rig_entity","pr.ignore"],data:{state:2,rot_mode:0},Rotation:[0.0f,0.0f]}
execute positioned ~4.5 ~159.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","aj.decwheel.root","kello.decal.mech_spawn_point","aj.decwheel.rig_entity","pr.ignore"],data:{state:2,rot_mode:1},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~159.5 ~21.12 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity.type.animwheel","pr.ignore"],data:{variant:8,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:18},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~158.5 ~19.75 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_3","kello.entity.type.animwheel","pr.ignore"],data:{variant:3,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:18},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~162.5 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_5","kello.entity.type.animwheel","pr.ignore"],data:{variant:5,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:18},Rotation:[-180.0f,0.0f]}


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


# parkour

scoreboard players set #init kello.entity.checkpoint.id 14
scoreboard players set #init kello.decal.id 974

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-4 ~112 ~-3 run function kello:entity/decal/parkour_controller/spawn/main

execute positioned ~0 ~155 ~17 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,90.0f]}
execute positioned ~1 ~155 ~8 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,90.0f]}
execute positioned ~-1 ~155 ~-1 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[0.0f,90.0f]}

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




## DECO PHASE

# neat trick where this lvl share the starfield effect of lvl 5 to prevent continuation jank
execute positioned ~.5 ~116.5 ~-24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.5"]}

execute positioned ~.5 ~112.5 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}
execute positioned ~.5 ~112.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}

execute positioned ~.5 ~128.5 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}
execute positioned ~.5 ~128.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}

execute positioned ~.5 ~145.5 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}
execute positioned ~.5 ~145.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}

execute positioned ~.5 ~161.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}
execute positioned ~.5 ~161.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.6"]}

execute as @e[type=minecraft:marker,distance=..512,tag=kello.entity.world_vfx,tag=!kello.verified] run function kello:generic/vfx/starfield/init

execute positioned ~1.5 ~114.0 ~-18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-0.5 ~114.0 ~-18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~4.5 ~125.0 ~4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~124.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~124.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~160.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~160.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~113.0 ~-12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-2.5 ~113.0 ~-12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}

execute positioned ~1.5 ~109.0 ~-19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~109.0 ~-19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","pr.ignore","aj.melloleta_path.root","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~109.0 ~-26.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-3.5 ~109.0 ~-23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~3.5 ~109.0 ~-22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-90.0f,0.0f]}

execute positioned ~-2.5 ~112.5 ~-4.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:-1},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~108.5 ~7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:0},Rotation:[90.0f,0.0f]}
execute positioned ~2.5 ~111.5 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:0,rot_mode:-1},Rotation:[90.0f,0.0f]}
execute positioned ~-2.5 ~109.5 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:5,rot_speed:1,rot_mode:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~112.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:0,rot_mode:1},Rotation:[-90.0f,0.0f]}

execute positioned ~4.5 ~124.5 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:1,rot_mode:-1},Rotation:[90.0f,0.0f]}
execute positioned ~4.5 ~128.5 ~13.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:1,rot_mode:1},Rotation:[90.0f,0.0f]}
execute positioned ~3.5 ~121.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:0,rot_mode:-1},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~127.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:1},Rotation:[0.0f,0.0f]}
execute positioned ~4.5 ~123.5 ~2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:4,rot_speed:1,rot_mode:0},Rotation:[90.0f,0.0f]}
execute positioned ~-2.5 ~126.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:1,rot_mode:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~127.5 ~-3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:1,rot_mode:-1},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~125.5 ~-13.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:0},Rotation:[0.0f,0.0f]}

execute positioned ~-2.5 ~148.5 ~-3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:1,rot_mode:1},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~144.5 ~3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:0,rot_mode:0},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~144.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:5,rot_speed:1,rot_mode:-1},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~147.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:-1},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~144.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:0,rot_mode:0},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~148.5 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:5,rot_speed:1,rot_mode:0},Rotation:[-180.0f,0.0f]}

execute positioned ~1.5 ~164.5 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:1,rot_mode:1},Rotation:[0.0f,0.0f]}
execute positioned ~-3.5 ~164.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2,rot_speed:0,rot_mode:0},Rotation:[90.0f,0.0f]}
execute positioned ~0.5 ~165.5 ~3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:5,rot_speed:0,rot_mode:-1},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~162.5 ~6.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.flyfan","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:3,rot_speed:1,rot_mode:0},Rotation:[0.0f,0.0f]}

execute positioned ~-0.5 ~109.0 ~-16.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~109.0 ~-16.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~2.5 ~121.0 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~121.0 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~2.5 ~142.0 ~-9.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~2.5 ~156.0 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~109.0 ~2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-0.5 ~121.0 ~26.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~122.0 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-0.5 ~142.0 ~-14.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-1.5 ~142.0 ~-10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~1.5 ~140.0 ~-12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~156.0 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-0.5 ~154.0 ~26.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-2.5 ~157.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~4.5 ~109.0 ~7.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-3.5 ~113.0 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~3.5 ~112.0 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~125.0 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~128.0 ~-2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~0.5 ~163.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[13.0f,0.0f]}
execute positioned ~2.5 ~164.5 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[7.0f,0.0f]}
execute positioned ~2.5 ~165.25 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[23.0f,0.0f]}
execute positioned ~-1.5 ~163.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[1.0f,0.0f]}
execute positioned ~-1.5 ~127.0 ~12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[15.0f,0.0f]}
execute positioned ~-3.0 ~128.0 ~9.75 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[16.0f,0.0f]}
execute positioned ~2.75 ~128.5 ~-6.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[26.0f,0.0f]}
execute positioned ~3.5 ~127.5 ~-2.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[15.0f,0.0f]}

execute positioned ~3.5 ~108.75 ~26.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[102.0f,0.0f]}
execute positioned ~-1.5 ~107.0 ~26.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-74.0f,0.0f]}
execute positioned ~-3.5 ~105.5 ~-0.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[110.0f,0.0f]}
execute positioned ~-1.75 ~110.75 ~2.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[-62.0f,0.0f]}
execute positioned ~-3.0 ~108.5 ~13.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[113.0f,0.0f]}
execute positioned ~-3.0 ~122.75 ~16.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[40.0f,0.0f]}
execute positioned ~1.5 ~126.0 ~-13.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-104.0f,0.0f]}
execute positioned ~-1.75 ~122.5 ~23.37 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-169.0f,0.0f]}
execute positioned ~-2.75 ~141.5 ~3.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~4.125 ~144.25 ~9.75 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[109.0f,0.0f]}
execute positioned ~-2.75 ~142.75 ~16.0 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[-175.0f,0.0f]}
execute positioned ~3.25 ~145.5 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-111.0f,0.0f]}
execute positioned ~4.0 ~136.5 ~-1.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[84.0f,0.0f]}
execute positioned ~-1.5 ~143.5 ~-5.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[102.0f,0.0f]}
execute positioned ~-2.0 ~155.5 ~10.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[153.0f,0.0f]}
execute positioned ~4.25 ~156.5 ~-3.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-168.0f,0.0f]}
execute positioned ~2.25 ~159.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.comet_flake.root","kello.decal","kello.exclude","kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[124.0f,0.0f]}

execute positioned ~4.0 ~126.75 ~8.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[25.0f,0.0f]}
execute positioned ~-3.5 ~126.0 ~1.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[32.0f,0.0f]}
execute positioned ~-1.25 ~128.0 ~3.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[31.0f,0.0f]}
execute positioned ~1.5 ~150.75 ~-0.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[21.0f,0.0f]}
execute positioned ~-1.5 ~149.75 ~1.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[20.0f,0.0f]}
execute positioned ~1.75 ~149.5 ~11.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[44.0f,0.0f]}
execute positioned ~-1.5 ~151.0 ~12.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[7.0f,0.0f]}
execute positioned ~0.5 ~151.0 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[7.0f,0.0f]}


function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0
return 1