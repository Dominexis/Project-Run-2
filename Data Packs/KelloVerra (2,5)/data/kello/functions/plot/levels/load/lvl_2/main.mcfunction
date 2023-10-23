## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 2
scoreboard players set #local kello.level.var 0
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1






## CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 2

scoreboard players set #uninstantiate kello.value 1
execute positioned ~-3 ~4 ~-14 run function kello:entity/checkpoint/spawn/main
execute positioned ~ ~1 ~-16 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## MECHANIC PHASE

scoreboard players set #init kello.entity.checkpoint.id 2
scoreboard players set #init kello.decal.id 2

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~4 ~-3 run function kello:entity/decal/contraption_controller/spawn/main
execute positioned ~-2 ~11 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:1}}
execute positioned ~-1 ~11 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:0}}
execute positioned ~0 ~12 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1}}
execute positioned ~1 ~13 ~-3 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~-1 ~11 ~-2 align xyz positioned ~.5 ~.75 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19,variant:4,brightness:{sky:0,block:3}}}
execute positioned ~2 ~12 ~-2 align xyz positioned ~-.125 ~.75 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19,variant:5,brightness:{sky:0,block:2}}}
execute positioned ~2 ~11 ~-2 align xyz positioned ~.5 ~.95 ~1.125 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19,variant:8,brightness:{sky:0,block:3}}}
execute positioned ~0 ~8 ~1 align xyz positioned ~.5 ~.45 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:14,invdelay:17,variant:4,brightness:{sky:0,block:5}}}
execute positioned ~1 ~8 ~1 align xyz positioned ~.5 ~-.25 ~.25 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:16,variant:4,brightness:{sky:0,block:4}}}
execute positioned ~3 ~9 ~1 align xyz positioned ~.5 ~-.25 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:1,rot_speed:1,rundelay:14,invdelay:18,variant:8,brightness:{sky:0,block:4}}}
execute positioned ~3 ~11 ~-3 align xyz positioned ~.5 ~.95 ~1.125 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:1,rot_speed:1,rundelay:19,invdelay:19,variant:1}}
execute positioned ~-3 ~11 ~-3 align xyz positioned ~.5 ~.125 ~.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:19,invdelay:10,variant:7}}
execute positioned ~2 ~12 ~-3 align xyz positioned ~.5 ~.225 ~.95 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19,variant:0}}
execute positioned ~-3 ~3 ~-3 align xyz positioned ~.475 ~.35 ~0.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:0,rot_mode:1,rot_speed:1,rundelay:16,invdelay:8,variant:4,brightness:{sky:0,block:4}}}
execute positioned ~-3 ~3 ~-11 align xyz positioned ~.475 ~.35 ~0.35 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:0,rot_mode:1,rot_speed:1,rundelay:16,invdelay:8,variant:4,brightness:{sky:0,block:4}}}
execute positioned ~-3 ~3 ~-10 align xyz positioned ~.275 ~.45 ~.65 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:7,variant:3,brightness:{sky:0,block:3}}}
execute positioned ~2 ~4 ~-1 align xyz positioned ~.475 ~.35 ~0.35 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:16,invdelay:8,variant:8,brightness:{sky:0,block:4}}}
execute positioned ~2 ~4 ~7 align xyz positioned ~.475 ~.35 ~0.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:16,invdelay:8,variant:8,brightness:{sky:0,block:4}}}
execute positioned ~2 ~4 ~6 align xyz positioned ~.575 ~.45 ~.75 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:7,variant:5,brightness:{sky:0,block:3}}}
execute positioned ~-5 ~7 ~1 align xyz positioned ~.95 ~.5 ~.75 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{state:2,rot_mode:0,rot_speed:1,rundelay:14,invdelay:18,variant:3,brightness:{sky:0,block:3}}}
execute positioned ~-3 ~8 ~1 align xyz positioned ~.25 ~.65 ~.85 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.override_brightness","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{state:2,rot_mode:1,rot_speed:1,rundelay:14,invdelay:18,variant:5,brightness:{sky:0,block:3}}}
execute positioned ~-3 ~12 ~-1 align xyz positioned ~.125 ~-.125 ~.125 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{state:0,rot_mode:1,rot_speed:1,rundelay:15,invdelay:7,variant:6}}
execute positioned ~-1 ~12 ~-1 align xyz positioned ~.425 ~.5 ~.125 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f],data:{state:0,rot_mode:0,rot_speed:1,rundelay:15,invdelay:7,variant:7}}
execute positioned ~0 ~7 ~14 align xyz positioned ~.5 ~.5 ~.95 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:0,rot_speed:1,rundelay:16,invdelay:17,variant:4}}
execute positioned ~-1 ~7 ~14 align xyz positioned ~.625 ~.25 ~.975 run summon marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f],data:{state:2,rot_mode:1,rot_speed:1,rundelay:16,invdelay:17,variant:1}}
execute positioned ~-2 ~2 ~-10 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[180.0f,0.0f]}
execute positioned ~1 ~3 ~6 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.moving_platform","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}
execute positioned ~0 ~3 ~11 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[0.0f,-90.0f],data:{state:-1,rot_mode:-1}}
execute positioned ~0 ~3 ~11 align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["kello.entity.type.large_groundicator","kello.decal.mech_spawn_point"],Rotation:[0.0f,0.0f]}

scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1

execute as @e[type=marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main

scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0






## DECO PHASE

# execute positioned ~-2 ~4 ~-16 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellolily_pot","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-90.0f,0.0f],data:{variant:0}}
# execute positioned ~2 ~4 ~-16 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellolily_pot","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-90.0f,0.0f],data:{variant:0}}
# execute positioned ~-2 ~4 ~14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellobanner","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:0}}
# execute positioned ~2 ~4 ~14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellobanner","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~1 ~7 ~14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellolily_pot","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[90.0f,0.0f],data:{variant:1}}
# execute positioned ~-1 ~7 ~14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellolily_pot","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[90.0f,0.0f],data:{variant:1}}

# execute positioned ~-5 ~9 ~-10 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~7 ~-13 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~3 ~-9 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~4 ~-14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~13 ~-10 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~10 ~-15 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~12 ~-15 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~6 ~-1 ~-11 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~5 ~7 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~10 ~-8 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~8 ~4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~12 ~4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~12 ~4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~3 ~0 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~6 ~6 ~-5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~8 ~-4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~1 ~11 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~4 ~3 ~14 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[90.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~6 ~13 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:1}}

# execute positioned ~-2 ~10 ~-16 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-90.0f,0.0f],data:{variant:0}}
# execute positioned ~5 ~11 ~-5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:0}}
# execute positioned ~-5 ~5 ~-2 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:0}}
# execute positioned ~5 ~3 ~6 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:0}}
# execute positioned ~-5 ~4 ~-7 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:0}}
# execute positioned ~-5 ~13 ~-6 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:0}}
# execute positioned ~-6 ~10 ~10 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:0}}

# execute positioned ~1 ~11 ~-16 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-90.0f,0.0f],data:{variant:2}}
# execute positioned ~6 ~0 ~-4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:2}}
# execute positioned ~-6 ~-2 ~4 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[-180.0f,0.0f],data:{variant:2}}
# execute positioned ~6 ~12 ~12 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f],data:{variant:2}}

# execute positioned ~1.5 ~7.5 ~-9.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.comet_flake","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}

execute positioned ~2.75 ~7.5 ~-9.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.comet_flake","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-19.0f,0.0f]}
execute positioned ~-0.5 ~1.0 ~-14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~1.5 ~1.0 ~-16.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~-2.5 ~4.0 ~-13.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~5.5 ~3.0 ~-9.0 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~11.5 ~-5.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~5.5 ~7.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-5.5 ~1.0 ~11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~12.5 ~4.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:2},Rotation:[-180.0f,0.0f]}
execute positioned ~-4.5 ~9.5 ~-9.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~5.5 ~3.5 ~0.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-2.5 ~8.5 ~8.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.comet_flake","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[-64.0f,0.0f]}
execute positioned ~3.39 ~12.0 ~-11.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[3.0f,0.0f]}
execute positioned ~-1.5 ~12.0 ~-5.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[18.0f,0.0f]}
execute positioned ~-3.5 ~10.5 ~-7.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[5.0f,0.0f]}
execute positioned ~-1.5 ~4.5 ~14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellobanner","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~2.5 ~4.5 ~14.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.mellobanner","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~5.5 ~9.0 ~4.5 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily","pr.ignore","kello.decal.temp_spawn_point","kello.decal.unregistered"],data:{variant:1},Rotation:[0.0f,0.0f]}


function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0