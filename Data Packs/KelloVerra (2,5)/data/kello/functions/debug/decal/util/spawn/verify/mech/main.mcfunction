execute if entity @s[tag=kello.state.0] run scoreboard players set #local kello.decal.state 0
execute if entity @s[tag=kello.state.1] run scoreboard players set #local kello.decal.state 1
execute if entity @s[tag=kello.state.2] run scoreboard players set #local kello.decal.state 2
execute if entity @s[tag=kello.state.3] run scoreboard players set #local kello.decal.state 3

execute if entity @s[tag=kello.rot_mode.-1] run scoreboard players set #local kello.decal.rot_mode -1
execute if entity @s[tag=kello.rot_mode.0] run scoreboard players set #local kello.decal.rot_mode 0
execute if entity @s[tag=kello.rot_mode.1] run scoreboard players set #local kello.decal.rot_mode 1


execute if entity @s[tag=kello.entity.type.launchpad  ] run scoreboard players operation #defined_power kello.value = @s kello.entity.launch_power
execute if entity @s[tag=kello.entity.type.meteorspawn] run scoreboard players operation #countdown kello.value = @s kello.entity.timer

execute if entity @s[tag=kello.entity.type.small_decwheel_gear] run function kello:entity/decal/decwheel/spawn/small
execute if entity @s[tag=kello.entity.type.large_decwheel_gear] run function kello:entity/decal/decwheel/spawn/large
execute if entity @s[tag=kello.entity.type.small_cogwheel_shaft] run function kello:entity/decal/decwheel/spawn/small_shaft
execute if entity @s[tag=kello.entity.type.large_cogwheel_shaft] run function kello:entity/decal/decwheel/spawn/large_shaft
# execute if score #decal kello.value = $decal.small_decal_shaft kello.decal run function kello:entity/decal/decwheel/spawn/small_decshaft
execute if entity @s[tag=kello.entity.type.small_decwheel_shaft] run function kello:entity/decal/decwheel/spawn/chunk/small_shaft/new
execute if entity @s[tag=kello.entity.type.large_decwheel_shaft] run function kello:entity/decal/decwheel/spawn/chunk/large_shaft/new
execute if entity @s[tag=kello.entity.type.chapter_1_gate] run function kello:entity/decal/component/gate/spawn/chapter_1/main
execute if entity @s[tag=kello.entity.type.chapter_2_gate] run function kello:entity/decal/component/gate/spawn/chapter_2/main

execute if entity @s[tag=kello.entity.type.small_groundicator] positioned ~ ~.125 ~ run function kello:entity/groundicator/small/spawn/main
execute if entity @s[tag=kello.entity.type.large_groundicator] positioned ~ ~.125 ~ run function kello:entity/groundicator/large/spawn/main

# execute if score #decal kello.value = $decal.chain_platform kello.decal run function kello:entity/decal/component/chain_platform/spawn/main
# execute if score #decal kello.value = $decal.escapement kello.decal run function kello:entity/decal/component/escapement/spawn/main
execute if entity @s[tag=kello.entity.type.meteorspawn] run function kello:entity/decal/component/falling_platform/spawn/chapter_1/spawner/main
execute if entity @s[tag=kello.entity.type.launchpad] run function kello:entity/decal/component/launchpad/spawn/main
execute if entity @s[tag=kello.entity.type.moving_platform] run function kello:entity/decal/component/moving_platform/spawn/railer/verify

kill @s