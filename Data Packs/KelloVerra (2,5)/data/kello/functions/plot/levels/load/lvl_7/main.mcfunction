## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 7
scoreboard players set #local kello.level.var 0
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y 1711







## CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 5324
scoreboard players set #init kello.player.void_y 1711

scoreboard players set #uninstantiate kello.value 1
execute positioned ~3 ~179 ~-6 run function kello:entity/checkpoint/spawn/main
execute positioned ~ ~176 ~-9 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE


# contraption 1
# scoreboard players set #init kello.entity.checkpoint.id 1
scoreboard players set #init kello.decal.id 8508

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~182 ~16 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~3 ~183 ~24 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~-3 ~183 ~10 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}

execute positioned ~-0.5 ~184.5 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:0,rot_mode:0},Rotation:[-180.0f,0.0f]}
execute positioned ~2.0 ~185.5 ~12.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:2,rot_mode:1,rot_speed:1,rundelay:8,invdelay:19},Rotation:[0.0f,0.0f]}

execute positioned ~0.5 ~185.5 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:1,rot_mode:1},Rotation:[-180.0f,0.0f]}

execute positioned ~-1.0 ~186.5 ~12.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","kello.decal.type.animwheel","pr.ignore"],data:{variant:8,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~1.5 ~183.5 ~12.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.entity.type.gear_6","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.decal.type.animwheel","pr.ignore"],data:{variant:6,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-0.5 ~187.5 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[0.0f,0.0f]}
execute positioned ~-2.5 ~184.12 ~8.98 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~-2.5 ~184.0 ~26.12 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[90.0f,0.0f]}
execute positioned ~3.5 ~184.0 ~26.12 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}
execute positioned ~3.5 ~184.12 ~8.98 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{variant:4,state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19},Rotation:[-90.0f,0.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1
scoreboard players set #spawn_persistent kello.value 1


execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0




# contraption 2

scoreboard players set #init kello.decal.id 4929

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~182 ~31 run function kello:entity/decal/contraption_controller/spawn/main

execute positioned ~3.5 ~178.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:0,rot_mode:1},Rotation:[-180.0f,0.0f]}
execute positioned ~2.5 ~177.5 ~28.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_5","kello.decal.type.animwheel","pr.ignore"],data:{state:2,rot_mode:1,rot_speed:1,rundelay:8,invdelay:19,variant:5},Rotation:[0.0f,0.0f]}

execute positioned ~2.5 ~179.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:1,rot_mode:0},Rotation:[-180.0f,0.0f]}

execute positioned ~1.5 ~180.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:2,rot_mode:1},Rotation:[-180.0f,0.0f]}
execute positioned ~2.5 ~181.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.entity.type.cogwheel","kello.decal.mech_spawn_point","kello.entity","pr.ignore"],data:{state:2,rot_mode:1},Rotation:[-180.0f,0.0f]}
execute positioned ~0.5 ~179.5 ~28.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","kello.decal.type.animwheel","pr.ignore"],data:{state:1,rot_mode:1,rot_speed:1,rundelay:20,invdelay:19,variant:3},Rotation:[0.0f,0.0f]}
execute positioned ~4.5 ~180.5 ~28.6 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.entity.type.gear_7","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.decal.type.animwheel","pr.ignore"],data:{state:1,rot_mode:0,rot_speed:1,rundelay:20,invdelay:19,variant:7},Rotation:[0.0f,0.0f]}
execute positioned ~1.5 ~181.5 ~27.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_4","kello.decal.type.animwheel","pr.ignore"],data:{state:1,rot_mode:1,rot_speed:1,rundelay:20,invdelay:19,variant:4},Rotation:[0.0f,0.0f]}
execute positioned ~4.5 ~181.5 ~29.25 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","kello.decal.type.animwheel","pr.ignore"],data:{state:1,rot_mode:0,rot_speed:1,rundelay:20,invdelay:19,variant:8},Rotation:[-180.0f,0.0f]}

execute positioned ~0 ~182 ~27 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:20}}
execute positioned ~0 ~182 ~29 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:22}}
execute positioned ~0 ~182 ~31 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:24}}
execute positioned ~0 ~182 ~33 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:26}}
execute positioned ~0 ~182 ~35 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.meteorspawn","kello.decal.mech_spawn_point"],data:{countdown:28}}

execute positioned ~-4 ~173 ~37 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1450},Rotation:[0.0f,-90.0f]}
execute positioned ~4 ~173 ~37 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.launchpad","kello.decal.mech_spawn_point"],data:{launch_power:1450},Rotation:[0.0f,-90.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1
scoreboard players set #spawn_persistent kello.value 1


execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0





# parkour

scoreboard players set #init kello.decal.id 7218

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~183 ~-2 run function kello:entity/decal/parkour_controller/spawn/main
execute positioned ~0 ~176 ~-5 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f]}
execute positioned ~-1 ~178 ~0 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f]}
execute positioned ~0 ~175 ~5 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f]}

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

execute positioned ~0.5 ~185.5 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[15.0f,0.0f]}
# execute positioned ~0.5 ~185.5 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.exclude","aj.melloflora_lantern.bone","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[24.0f,0.0f]}
# execute positioned ~0.5 ~185.5 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.exclude","aj.melloflora_lantern.bone","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[43.0f,0.0f]}
execute positioned ~1.5 ~183.5 ~-9.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[5.0f,0.0f]}
execute positioned ~-1.5 ~184.5 ~-10.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[15.0f,0.0f]}
execute positioned ~-0.5 ~183.5 ~-14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[15.0f,0.0f]}
execute positioned ~0.5 ~184.5 ~-4.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[27.0f,0.0f]}
execute positioned ~2.5 ~176.0 ~-9.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~176.0 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-2.5 ~177.0 ~-8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~174.0 ~-12.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~175.0 ~-14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.exclude","aj.melloleta_patch_singular.root","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~5.5 ~177.5 ~27.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~182.5 ~24.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~174.5 ~24.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~180.5 ~26.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~183.5 ~23.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~173.5 ~21.5 run summon marker ~ ~ ~ {Tags:["kello.decal","aj.wall_mellolily.root","kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-1.5 ~185.5 ~-2.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[20.0f,0.0f]}

execute positioned ~2.5 ~176.0 ~38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~176.0 ~38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal","kello.exclude","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore","aj.melloleta_path.root"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~-0.5 ~185.5 ~36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[26.0f,0.0f]}
execute positioned ~0.5 ~184.0 ~37.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[20.0f,0.0f]}
execute positioned ~2.5 ~185.5 ~36.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[5.0f,0.0f]}
execute positioned ~-2.0 ~184.5 ~38.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","aj.melloflora_lantern.root","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[3.0f,0.0f]}

function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #level_creation_mode kello.value 0