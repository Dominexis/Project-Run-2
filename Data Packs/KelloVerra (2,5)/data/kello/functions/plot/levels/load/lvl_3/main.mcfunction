## INITIALIZATION PHASE

scoreboard players set #local kello.level.id 3
scoreboard players set #local kello.level.var 0
scoreboard players set #infinite_lifetime kello.value 1
scoreboard players set #level_creation_mode kello.value 1
scoreboard players set #init kello.player.void_y -1






## START CHECKPOINT PHASE

scoreboard players set #init kello.entity.checkpoint.id 3

scoreboard players set #uninstantiate kello.value 1
execute positioned ~0 ~1 ~22 run function kello:entity/checkpoint/spawn/main
execute positioned ~0 ~1 ~18 run function kello:entity/checkpoint/spawn/spawn_mark
scoreboard players set #uninstantiate kello.value 0






## START MECHANIC PHASE

# right

scoreboard players set #init kello.entity.checkpoint.id 3
scoreboard players set #init kello.decal.id 3

scoreboard players set #uninstantiate kello.value 1
scoreboard players set #halt_contraption_controller_checkpoint kello.value 1
execute positioned ~-6 ~6 ~21 run function kello:entity/decal/contraption_controller/spawn_optional/main
execute positioned ~-6 ~10 ~22 align xyz positioned ~.25 ~.95 ~.95 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:2,rot_mode:1,rot_speed:1,rundelay:8,invdelay:19,variant:8}}
execute positioned ~-6 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:1}}
execute positioned ~-6 ~9 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~-6 ~9 ~20 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~-6 ~7 ~23 align xyz positioned ~.25 ~.45 ~.125 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.override_brightness"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19,variant:4,brightness:{sky:0,block:3}}}
execute positioned ~-6 ~9 ~20 align xyz positioned ~.125 ~.75 ~.25 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point","kello.override_brightness"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0,rot_speed:1,rundelay:19,invdelay:19,variant:0,brightness:{sky:0,block:5}}}

execute positioned ~-8 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:1,rot_mode:0}}

execute positioned ~-8 ~9 ~20 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],data:{state:2,rot_mode:1},Rotation:[90.0f,0.0f]}
execute positioned ~-8 ~11 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],data:{state:0,rot_mode:1},Rotation:[90.0f,0.0f]}

execute positioned ~-7.5 ~10.25 ~20.0 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:3,state:1,rot_mode:1,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.25 ~10.75 ~23.75 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:4,state:2,rot_mode:1,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.13 ~7.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:7,state:0,rot_mode:0,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.13 ~7.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:7,state:0,rot_mode:1,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.13 ~9.5 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:8,state:1,rot_mode:0,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.25 ~11.75 ~22.0 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:1,state:2,rot_mode:1,rot_speed:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-7.25 ~9.5 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.animated_wheel","kello.has_delay","kello.decal.mech_spawn_point"],data:{rundelay:19,invdelay:19,variant:5,state:1,rot_mode:0,rot_speed:0},Rotation:[-90.0f,0.0f]}

execute positioned ~-7 ~1 ~21 align xyz positioned ~.5 ~ ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.gate","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{variant:0}}


scoreboard players operation #select_store kello.decal.id = #selected kello.decal.id
scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1



execute as @e[type=minecraft:marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main



scoreboard players set #halt_contraption_controller_checkpoint kello.value 0
scoreboard players set #spawn_persistent kello.value 0
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0



# left

scoreboard players set #init kello.entity.checkpoint.id 3
scoreboard players set #init kello.decal.id 4

scoreboard players set #uninstantiate kello.value 1
scoreboard players set #halt_contraption_controller_checkpoint kello.value 1
execute positioned ~6 ~6 ~21 run function kello:entity/decal/contraption_controller/spawn_optional/main
execute positioned ~6 ~12 ~21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:2,rot_mode:0}}
execute positioned ~6 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:1,rot_mode:1}}
execute positioned ~6 ~9 ~22 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.small_decwheel_gear","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{state:0,rot_mode:0}}
execute positioned ~6.87 ~9.5 ~20.75 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_5","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:5,rundelay:19,invdelay:11,state:0,rot_mode:0,rot_speed:1},Rotation:[-90.0f,0.0f]}
execute positioned ~6.87 ~11.75 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity.type.gear_8","kello.entity","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:8,rundelay:19,invdelay:11,state:1,rot_mode:1,rot_speed:1},Rotation:[-90.0f,0.0f]}
execute positioned ~6.87 ~10.5 ~23.0 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,rundelay:19,invdelay:11,state:1,rot_mode:0,rot_speed:1},Rotation:[-90.0f,0.0f]}

execute positioned ~8 ~10 ~21 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.large_cogwheel_shaft","kello.decal.mech_spawn_point"],Rotation:[-90.0f,0.0f],data:{state:1,rot_mode:0}}
execute positioned ~7 ~1 ~21 align xyz positioned ~.5 ~ ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity.type.gate","kello.decal.mech_spawn_point"],Rotation:[90.0f,0.0f],data:{variant:0}}
execute positioned ~8.5 ~11.0 ~20.75 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","kello.entity.type.gear_3","aj.animwheel.rig_entity","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:3,rundelay:11,invdelay:19,state:2,rot_mode:0,rot_speed:1},Rotation:[90.0f,0.0f]}
execute positioned ~8.5 ~9.0 ~22.75 run summon minecraft:marker ~ ~ ~ {Tags:["aj.animwheel.root","aj.rig_root","kello.entity.type.animated_wheel","kello.decal","kello.has_delay","kello.decal.mech_spawn_point","kello.entity","aj.animwheel.rig_entity","kello.entity.type.gear_4","kello.decal.type.animwheel","kello.decal.selected","pr.ignore"],data:{variant:4,rundelay:19,invdelay:19,state:1,rot_mode:0,rot_speed:1},Rotation:[90.0f,0.0f]}

scoreboard players operation #selected kello.decal.id = #init kello.decal.id
scoreboard players set #spawn_persistent kello.value 1
scoreboard players set #ref_state kello.value 1
scoreboard players set #ref_rotation kello.value 1
scoreboard players set #ref_rotation_speed kello.value 1


execute as @e[type=minecraft:marker,tag=kello.decal.mech_spawn_point] at @s run function kello:debug/decal/util/spawn/verify/mech/main


scoreboard players set #halt_contraption_controller_checkpoint kello.value 0
scoreboard players set #spawn_persistent kello.value 0
scoreboard players operation #selected kello.decal.id = #select_store kello.decal.id
scoreboard players set #uninstantiate kello.value 0
scoreboard players set #ref_state kello.value 0
scoreboard players set #ref_rotation kello.value 0
scoreboard players set #ref_rotation_speed kello.value 0






## DECO PHASE

# execute positioned ~6 ~12 ~12 run summon marker ~ ~ ~ {Tags:["kello.decal.type.wall_mellolily_large","kello.decal.temp_spawn_point","kello.decal.unregistered"],Rotation:[0.0f,0.0f]}

# execute positioned ~5 ~4 ~19 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner"],Rotation:[-90.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~4 ~23 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner"],Rotation:[-90.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~4 ~19 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner"],Rotation:[90.0f,0.0f],data:{variant:0}}
# execute positioned ~-5 ~4 ~23 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner"],Rotation:[90.0f,0.0f],data:{variant:0}}
# execute positioned ~-3 ~3 ~19 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellolily_pot"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~3 ~3 ~19 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellolily_pot"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-2 ~9 ~17 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-90.0f,0.0f],data:{variant:2}}
# execute positioned ~3 ~8 ~17 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-90.0f,0.0f],data:{variant:2}}
# execute positioned ~-4 ~5 ~17 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-90.0f,0.0f],data:{variant:2}}
# execute positioned ~4 ~4 ~17 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-90.0f,0.0f],data:{variant:2}}
# execute positioned ~-5 ~13 ~24 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~6 ~12 ~18 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~6 ~27 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~6 ~11.5 ~24.5 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[0.0f,0.0f],data:{variant:1}}
# execute positioned ~-6 ~13 ~18 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~3 ~13 ~17 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-90.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~8 ~25 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[0.0f,0.0f],data:{variant:0}}
# execute positioned ~-6 ~14 ~27 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-180.0f,0.0f],data:{variant:0}}
# execute positioned ~-6 ~10 ~25 run summon marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily"],Rotation:[-180.0f,0.0f],data:{variant:0}}
# execute positioned ~1 ~1 ~18 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-90.0f,0.0f],data:{variant:1}}
# execute positioned ~2 ~1 ~20 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~1 ~20 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-2 ~1 ~20 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~1 ~20 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-5 ~1 ~22 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-2 ~1 ~22 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~2 ~1 ~22 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~5 ~1 ~22 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[-180.0f,0.0f],data:{variant:1}}
# execute positioned ~-1 ~1 ~18 run summon marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","kello.exclude"],Rotation:[90.0f,0.0f],data:{variant:1}}

execute positioned ~.5 ~13.5 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.entity","kello.entity.world_vfx","kello.entity.type.starfield","kello.level.3"]}

execute as @e[type=minecraft:marker,distance=..512,tag=kello.entity.world_vfx,tag=!kello.verified] run function kello:generic/vfx/starfield/init


execute positioned ~-1.5 ~9.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:2},Rotation:[-90.0f,0.0f]}
execute positioned ~-3.5 ~5.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~4.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~4.5 ~13.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-4.5 ~3.5 ~28.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~6.5 ~12.62 ~26.62 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~13.0 ~24.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-5.5 ~8.5 ~27.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:0},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~8.5 ~17.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[90.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~18.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~4.5 ~1.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~4.5 ~1.0 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~-3.5 ~1.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~-3.5 ~1.0 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~2.5 ~1.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-90.0f,0.0f]}
execute positioned ~-1.5 ~1.0 ~20.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~0.5 ~1.0 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloleta","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}
execute positioned ~-4.5 ~4.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~-4.5 ~4.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner","pr.ignore"],data:{variant:0},Rotation:[90.0f,0.0f]}
execute positioned ~5.5 ~4.5 ~23.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~5.5 ~4.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.mellobanner","pr.ignore"],data:{variant:1},Rotation:[-90.0f,0.0f]}
execute positioned ~-2.5 ~12.0 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[30.0f,0.0f]}
execute positioned ~-1.0 ~10.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[1.0f,0.0f]}
execute positioned ~2.5 ~12.25 ~24.29 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[38.0f,0.0f]}
execute positioned ~5.5 ~10.5 ~25.29 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[42.0f,0.0f]}
execute positioned ~-2.5 ~10.75 ~25.29 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[7.0f,0.0f]}
execute positioned ~3.5 ~9.5 ~22.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.melloflora_lantern","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[3.0f,0.0f]}
execute positioned ~-2.5 ~3.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily_pot","pr.ignore"],data:{variant:1},Rotation:[-180.0f,0.0f]}
execute positioned ~3.5 ~3.5 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily_pot","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}
execute positioned ~6.5 ~3.5 ~25.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.temp_spawn_point","kello.decal.unregistered","kello.decal.type.wall_mellolily","pr.ignore"],data:{variant:1},Rotation:[0.0f,0.0f]}

execute positioned ~0.5 ~6.0 ~19.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~6.5 ~6.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~-5.5 ~6.0 ~21.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~11.5 ~19.5 ~-31.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~11.5 ~19.5 ~-33.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~-10.5 ~19.5 ~-33.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[-0.0f,0.0f]}
execute positioned ~-10.5 ~19.5 ~-31.5 run summon minecraft:marker ~ ~ ~ {Tags:["kello.decal.type.wind_chime","kello.exclude","kello.decal","kello.decal.temp_spawn_point","kello.decal.unregistered","pr.ignore"],data:{variant:0},Rotation:[0.0f,0.0f]}

function kello:debug/decal/gen/queue






# DEINITIALIZATION FINAL PHASE

scoreboard players set #uninstantiate kello.value 0
scoreboard players set #infinite_lifetime kello.value 0
scoreboard players set #level_creation_mode kello.value 0
return 1