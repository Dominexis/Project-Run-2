# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/decal/component/moving_platform/state/deactivate/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0






# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/component/moving_platform/state/deactive/state
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/component/moving_platform/state/move/state
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/component/moving_platform/state/idle/state

scoreboard players operation @s kello.entity.state = #state kello.value






# Run function for specific state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/component/moving_platform/state/deactive/main
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/component/moving_platform/state/move/main
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/component/moving_platform/state/idle/main

scoreboard players operation @s kello.entity.state = #state kello.value
return 1