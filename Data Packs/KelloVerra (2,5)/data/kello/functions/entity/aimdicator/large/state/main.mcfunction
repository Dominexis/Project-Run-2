# Denullify state value

execute unless score @s kello.entity.state = @s kello.entity.state run function kello:entity/aimdicator/large/state/idle/start
execute unless score @s kello.entity.state = @s kello.entity.state run scoreboard players set @s kello.entity.state 0







# Change state based on preexisting conditions

scoreboard players operation #state kello.value = @s kello.entity.state

execute if score @s kello.entity.state matches 00 run function kello:entity/aimdicator/large/state/idle/state
execute if score @s kello.entity.state matches 01 run function kello:entity/aimdicator/large/state/look/state
execute if score @s kello.entity.state matches 02 run function kello:entity/aimdicator/large/state/targ/state
execute if score @s kello.entity.state matches 03 run function kello:entity/aimdicator/large/state/lock/state

scoreboard players operation @s kello.entity.state = #state kello.value







# Run function for specific state

execute if score @s kello.entity.state matches 00 run function kello:entity/aimdicator/large/state/idle/main
execute if score @s kello.entity.state matches 01 run function kello:entity/aimdicator/large/state/look/main
execute if score @s kello.entity.state matches 02 run function kello:entity/aimdicator/large/state/targ/main
execute if score @s kello.entity.state matches 03 run function kello:entity/aimdicator/large/state/lock/main

scoreboard players operation @s kello.entity.state = #state kello.value