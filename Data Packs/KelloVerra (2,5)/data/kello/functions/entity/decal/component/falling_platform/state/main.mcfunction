# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/decal/component/falling_platform/state/countdown/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0






# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/component/falling_platform/state/countdown/state
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/component/falling_platform/state/spawn/state
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/component/falling_platform/state/fall/state

scoreboard players operation @s kello.entity.state = #state kello.value






# Run function for specific state

execute if score @s kello.entity.state matches 01 run function kello:entity/decal/component/falling_platform/state/spawn/main
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/component/falling_platform/state/fall/main
execute if score @s kello.entity.state matches 03 run function kello:entity/decal/component/falling_platform/state/despawn/main

scoreboard players operation @s kello.entity.state = #state kello.value