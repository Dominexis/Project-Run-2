data modify storage kello:data tag.temp_spawnpoint.data set from entity @s data

scoreboard players set #is_dummy kello.value 0

execute if score #ref_state kello.value matches 1 store result score #local kello.decal.state run data get storage kello:data tag.temp_spawnpoint.data.state 1
execute if score #ref_rotation kello.value matches 1 store result score #local kello.decal.rot_mode run data get storage kello:data tag.temp_spawnpoint.data.rot_mode 1
execute if score #ref_rotation_speed kello.value matches 1 store result score #local kello.decal.rot_speed run data get storage kello:data tag.temp_spawnpoint.data.rot_speed 1

scoreboard players set #override_brightness kello.value 0
execute if entity @s[tag=kello.override_brightness] run scoreboard players set #override_brightness kello.value 1

execute if entity @s[tag=kello.has_delay                 ] store result score #rundelay kello.entity.timer run data get storage kello:data tag.temp_spawnpoint.data.rundelay 1
execute if entity @s[tag=kello.has_delay                 ] store result score #invdelay kello.entity.delay run data get storage kello:data tag.temp_spawnpoint.data.invdelay 1
execute if entity @s[tag=!kello.has_delay                ] run scoreboard players set #rundelay kello.entity.timer 19
execute if entity @s[tag=!kello.has_delay                ] run scoreboard players set #invdelay kello.entity.delay 19

execute if entity @s[tag=kello.entity.type.animated_wheel] store result score #variant kello.value run data get storage kello:data tag.temp_spawnpoint.data.variant 1
execute if entity @s[tag=kello.entity.type.flyfan        ] store result score #variant kello.value run data get storage kello:data tag.temp_spawnpoint.data.variant 1
execute if entity @s[tag=kello.entity.type.gate          ] store result score #variant kello.value run data get storage kello:data tag.temp_spawnpoint.data.variant 1
execute if entity @s[tag=kello.entity.type.launchpad     ] store result score #defined_power kello.value run data get storage kello:data tag.temp_spawnpoint.data.launch_power 1
execute if entity @s[tag=kello.entity.type.meteorspawn   ] store result score #countdown kello.value run data get storage kello:data tag.temp_spawnpoint.data.countdown 1

execute if entity @s[tag=kello.entity.type.small_decwheel_gear  ] run function kello:entity/decal/decwheel/spawn/small
execute if entity @s[tag=kello.entity.type.large_decwheel_gear  ] run function kello:entity/decal/decwheel/spawn/large
execute if entity @s[tag=kello.entity.type.small_cogwheel_shaft ] run function kello:entity/decal/decwheel/spawn/small_shaft
execute if entity @s[tag=kello.entity.type.large_cogwheel_shaft ] run function kello:entity/decal/decwheel/spawn/large_shaft
# execute if score #decal kello.value = $decal.small_decal_shaft kello.decal run function kello:entity/decal/decwheel/spawn/small_decshaft
execute if entity @s[tag=kello.entity.type.small_decwheel_shaft ] run function kello:entity/decal/decwheel/spawn/chunk/small_shaft/new
execute if entity @s[tag=kello.entity.type.large_decwheel_shaft ] run function kello:entity/decal/decwheel/spawn/chunk/large_shaft/new
execute if entity @s[tag=kello.entity.type.gate                 ] run function kello:entity/decal/component/gate/spawn/chapter_1/main
# execute if entity @s[tag=kello.entity.type.chapter_2_gate       ] run function kello:entity/decal/component/gate/spawn/chapter_2/main

execute if entity @s[tag=kello.entity.type.small_groundicator   ] positioned ~ ~.125 ~ run function kello:entity/groundicator/small/spawn/main
execute if entity @s[tag=kello.entity.type.large_groundicator   ] positioned ~ ~.125 ~ run function kello:entity/groundicator/large/spawn/main

# execute if score #decal kello.value = $decal.chain_platform kello.decal run function kello:entity/decal/component/chain_platform/spawn/main
# execute if score #decal kello.value = $decal.escapement kello.decal run function kello:entity/decal/component/escapement/spawn/main
execute if entity @s[tag=kello.entity.type.meteorspawn      ] run function kello:entity/decal/component/falling_platform/spawn/chapter_1/spawner/main
execute if entity @s[tag=kello.entity.type.launchpad        ] run function kello:entity/decal/component/launchpad/spawn/main
execute if entity @s[tag=kello.entity.type.moving_platform  ] run function kello:entity/decal/component/moving_platform/spawn/railer/verify

execute if entity @s[tag=kello.entity.type.animated_wheel   ] run function kello:entity/decal/decwheel/spawn/animwheel/verify
execute if entity @s[tag=kello.entity.type.flyfan           ] run function kello:entity/decal/decwheel/spawn/flyfan/verify


kill @s