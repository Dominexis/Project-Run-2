# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/checkpoint/state/idle/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0







# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 0 run function kello:entity/checkpoint/state/idle/state
execute if score @s kello.entity.state matches 1 run function kello:entity/checkpoint/state/checkpoint/state
execute if score @s kello.entity.state matches 2 run function kello:entity/checkpoint/state/flap/state
execute if score @s kello.entity.state matches 3 run function kello:entity/checkpoint/state/curl/state

scoreboard players operation @s kello.entity.state = #state kello.value







# Run function for specific state

# execute if score @s kello.entity.state matches 0 run function kello:entity/checkpoint/state/idle/main
execute if score @s kello.entity.state matches 1 run function kello:entity/checkpoint/state/checkpoint/main
execute if score @s kello.entity.state matches 2 run function kello:entity/checkpoint/state/flap/main
execute if score @s kello.entity.state matches 3 run function kello:entity/checkpoint/state/curl/main

scoreboard players operation @s kello.entity.state = #state kello.value