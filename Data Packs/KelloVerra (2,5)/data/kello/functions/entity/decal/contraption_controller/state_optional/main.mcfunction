# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/decal/contraption_controller/state_optional/out/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 03






# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/contraption_controller/state_optional/idle/state
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/contraption_controller/state_optional/run/state
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/contraption_controller/state_optional/inv/state
execute if score @s kello.entity.state matches 03 run function kello:entity/decal/contraption_controller/state_optional/out/state

scoreboard players operation @s kello.entity.state = #state kello.value







# Run function for specific state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/contraption_controller/state_optional/idle/main
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/contraption_controller/state_optional/run/main
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/contraption_controller/state_optional/inv/main

scoreboard players operation @s kello.entity.state = #state kello.value