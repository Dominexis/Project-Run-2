# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/decal/contraption_controller/state/idle/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0







# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/contraption_controller/state/idle/state
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/contraption_controller/state/run/state
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/contraption_controller/state/inv/state
execute if score @s kello.entity.state matches 03 run function kello:entity/decal/contraption_controller/state/out/state

scoreboard players operation @s kello.entity.state = #state kello.value







# Run function for specific state

execute if score @s kello.entity.state matches 00 run function kello:entity/decal/contraption_controller/state/idle/main
execute if score @s kello.entity.state matches 01 run function kello:entity/decal/contraption_controller/state/run/main
execute if score @s kello.entity.state matches 02 run function kello:entity/decal/contraption_controller/state/inv/main

scoreboard players operation @s kello.entity.state = #state kello.value